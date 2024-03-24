# I2C IR Filter Switch

## Introduction
The I2C IR filter switch is based on CH32V003 acted as a I2C device, by default the I2C address is 0x34 and by writing 0x01 to enable IR filter or writing 0x00 to disable IR filter. The I2C connection is shared with the CMOS sensor on the StarlightEye.

## Install Python tool on RPI
To install the Python code to your RPI, run the following cmd  
```
sudo wget https://raw.githubusercontent.com/will127534/StarlightEye/master/software/IRFilter -O /usr/local/bin/IRFilter && sudo chmod +x /usr/local/bin/IRFilter
```

## Example
The I2C bus will depend on which port you connect the StarlightEye to RPI5, by default CAM1 maps to I2C port 4 and CAM1 to port 6.
The default of the script is on CAM1, but you can add '--i2c-bus' flag to change it to other ports.
To enable IR filter:
```
IRFilter --enable
```
To disable IR filter:
```
IRFilter --disable
```

## Support
For questions, issues, or suggestions, please open an issue in the [GitHub repository](https://github.com/will127534/StarlightEye/issues)
