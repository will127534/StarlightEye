#include "debug.h"

/* I2C Communication Mode Selection */
//#define I2C_MODE   HOST_MODE
#define I2C_MODE   SLAVE_MODE

/* Global define */
#define Size   6
#define RXAdderss   0x34 << 1

/* Global Variable */
u8 direction = 0;
u32 currentStep = 0;
volatile  u8 TxData = 0;



#define IR_CTRL_GPIO GPIOD
#define IR_SLEEP GPIO_Pin_4
#define IR_INA GPIO_Pin_5
#define IR_INB GPIO_Pin_6



/*********************************************************************
 * @fn      IIC_Init
 *
 * @brief   Initializes the IIC peripheral.
 *
 * @return  none
 */
void IIC_Init(u32 bound, u16 address)
{
    GPIO_InitTypeDef GPIO_InitStructure={0};
    I2C_InitTypeDef I2C_InitTSturcture={0};

    RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOD | RCC_APB2Periph_GPIOC | RCC_APB2Periph_AFIO, ENABLE );
    RCC_APB1PeriphClockCmd( RCC_APB1Periph_I2C1, ENABLE );

    //I2C
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_OD;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
    GPIO_Init( GPIOC, &GPIO_InitStructure );

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_OD;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
    GPIO_Init( GPIOC, &GPIO_InitStructure );

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init( GPIOD, &GPIO_InitStructure );

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init( GPIOD, &GPIO_InitStructure );

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init( GPIOD, &GPIO_InitStructure );


    I2C_InitTSturcture.I2C_ClockSpeed = bound;
    I2C_InitTSturcture.I2C_Mode = I2C_Mode_I2C;
    I2C_InitTSturcture.I2C_DutyCycle = I2C_DutyCycle_16_9;
    I2C_InitTSturcture.I2C_OwnAddress1 = address;
    I2C_InitTSturcture.I2C_Ack = I2C_Ack_Enable;
    I2C_InitTSturcture.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
    I2C_Init( I2C1, &I2C_InitTSturcture );

    I2C_Cmd( I2C1, ENABLE );


    I2C_StretchClockCmd( I2C1, DISABLE );

    // Enable interrupts
    I2C1->CTLR2 |= I2C_CTLR2_ITBUFEN;
    I2C1->CTLR2 |= I2C_CTLR2_ITEVTEN; // Event interrupt
    I2C1->CTLR2 |= I2C_CTLR2_ITERREN; // Error interrupt

    NVIC_EnableIRQ(I2C1_EV_IRQn); // Event interrupt
    NVIC_SetPriority(I2C1_EV_IRQn, 2 << 4);
    NVIC_EnableIRQ(I2C1_ER_IRQn); // Error interrupt



}

/*********************************************************************
 * @fn      main
 *
 * @brief   Main program.
 *
 * @return  none
 */


u8 IR_DIR = 0;
u32 IR_timeout = 0;

int main(void)
{
    Delay_Init();

    IIC_Init( 400000, RXAdderss);

    GPIO_WriteBit(IR_CTRL_GPIO, IR_SLEEP, 0);
    GPIO_WriteBit(IR_CTRL_GPIO, IR_INA, 0);
    GPIO_WriteBit(IR_CTRL_GPIO, IR_INB, 0);

    while (1){
        if (IR_timeout > 0){
            IR_timeout --;
            if (IR_timeout == 0){
                GPIO_WriteBit(IR_CTRL_GPIO, IR_INA, 0);
                GPIO_WriteBit(IR_CTRL_GPIO, IR_INB, 0);
                GPIO_WriteBit(IR_CTRL_GPIO, IR_SLEEP, 0);
            }
        }
    }
}




void I2C1_EV_IRQHandler(void) __attribute__((interrupt));
void I2C1_EV_IRQHandler(void) {
    uint16_t STAR1, STAR2 __attribute__((unused));
    STAR1 = I2C1->STAR1;
    STAR2 = I2C1->STAR2;

    //GPIO_WriteBit(LED_GPIO, LEDB, 0);
    I2C1->CTLR1 |= I2C_CTLR1_ACK;

    if (STAR1 & I2C_STAR1_RXNE) { // Write event
        //GPIO_WriteBit(LED_GPIO, LEDB, !(I2C1->DATAR == 0x01));
        IR_DIR = (I2C1->DATAR == 0x01);
        if (IR_DIR>0) {
            GPIO_WriteBit(IR_CTRL_GPIO, IR_INA, 1);
            GPIO_WriteBit(IR_CTRL_GPIO, IR_INB, 0);
            GPIO_WriteBit(IR_CTRL_GPIO, IR_SLEEP, 1);
        }
        else{
            GPIO_WriteBit(IR_CTRL_GPIO, IR_INA, 0);
            GPIO_WriteBit(IR_CTRL_GPIO, IR_INB, 1);
            GPIO_WriteBit(IR_CTRL_GPIO, IR_SLEEP, 1);
        }
        IR_timeout = 64000;
    }
    if (STAR1 & I2C_STAR1_TXE) { // Read event
        //I2C1->DATAR = TxData;
    }
    //GPIO_WriteBit(LED_GPIO, LEDB, 1);
}

void I2C1_ER_IRQHandler(void) __attribute__((interrupt));
void I2C1_ER_IRQHandler(void) {
    uint16_t STAR1 = I2C1->STAR1;

    if (STAR1 & I2C_STAR1_BERR) { // Bus error
        I2C1->STAR1 &= ~(I2C_STAR1_BERR); // Clear error
    }

    if (STAR1 & I2C_STAR1_ARLO) { // Arbitration lost error
        I2C1->STAR1 &= ~(I2C_STAR1_ARLO); // Clear error
    }

    if (STAR1 & I2C_STAR1_AF) { // Acknowledge failure
        I2C1->STAR1 &= ~(I2C_STAR1_AF); // Clear error
    }
}
