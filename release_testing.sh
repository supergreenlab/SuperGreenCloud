#!/bin/bash

cp -r ./www/update/ControllerV2.1Testing/$(cat ./www/update/ControllerV2.1Testing/last_timestamp) ./www/update/ControllerV2.1/
cp ./www/update/ControllerV2.1Testing/last_timestamp ./www/update/ControllerV2.1/

cp -r ./www/update/DriverV2.1Testing/$(cat ./www/update/DriverV2.1Testing/last_timestamp) ./www/update/DriverV2.1/
cp ./www/update/DriverV2.1Testing/last_timestamp ./www/update/DriverV2.1/

cp -r ./www/update/SoloV2.1Testing/$(cat ./www/update/SoloV2.1Testing/last_timestamp) ./www/update/SoloV2.1/
cp ./www/update/SoloV2.1Testing/last_timestamp ./www/update/SoloV2.1/

cp -r ./www/update/PickleV2.1Testing/$(cat ./www/update/PickleV2.1Testing/last_timestamp) ./www/update/PickleV2.1/
cp ./www/update/PickleV2.1Testing/last_timestamp ./www/update/PickleV2.1/
