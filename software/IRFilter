#!/usr/bin/env python
import argparse
import smbus

# Set up the argument parser
parser = argparse.ArgumentParser(description='I2C communication script')

# Add arguments
parser.add_argument('--enable', dest='write', action='store_const', const=0, default=0,
                    help='Enable IR Filter (set to 0)')
parser.add_argument('--disable', dest='write', action='store_const', const=1,
                    help='Disable IR Filter (set to 1)')
parser.add_argument('--i2c-bus', type=int, default=4,
                    help='I2C bus (default: 4)')
parser.add_argument('--i2c-address', type=lambda x: int(x,0), default=0x34,
                    help='I2C address in hexadecimal (default: 0x34)')

# Parse arguments
args = parser.parse_args()

# Assign arguments to variables
i2c_ch = args.i2c_bus
i2c_address = args.i2c_address
write_mode = args.write

# Initialize I2C
bus = smbus.SMBus(i2c_ch)

if write_mode == 0:
    bus.write_byte(i2c_address, 0x01)
    print("IR Filter enabled.")
elif write_mode == 1:
    bus.write_byte(i2c_address, 0x00)
    print("IR Filter disabled.")