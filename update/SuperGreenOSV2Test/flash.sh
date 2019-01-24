#!/bin/bash
DIR=`dirname "$0"`
DIR=`( cd "$DIR" && pwd )`
python2 $DIR/esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect 0xd000 $DIR/ota_data_initial.bin 0x1000 $DIR/bootloader.bin 0x10000 $DIR/firmware.bin 0x8000 $DIR/partitions.bin
