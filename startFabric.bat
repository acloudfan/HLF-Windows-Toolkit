::     Script for starting the Fabric containers
::     =========================================
::     This script is part of the course on Hyperledger Fabric
::     More information at htt://ACloudFan.com
::     Contact: raj@acloudfan.com
::     Note:
::     ==========================
::     To be used ONLY on Windows platform
::     To be replaced by Hyperledger supported setup for Windows (once it is released)
::     
::     Disclaimer
::     ==========
::     Author can provide LIMITED support 
::     Provided on AS-IS basis

set ARCH=x86_64

set COMPOSE_CONVERT_WINDOWS_PATHS=1

cd composer

:: Before starting make sure all containers are brought down
docker-compose -f docker-compose.yml down

:: Get environment up
docker-compose -f docker-compose.yml up -d

:: Increase the timeout if you see failure on the execution of the last two commands
timeout 15

:: Create the channel
docker exec peer0.org1.example.com peer channel create -o orderer.example.com:7050 -c composerchannel -f /etc/hyperledger/configtx/composer-channel.tx

:: Join the channel
docker exec -e "CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/msp/users/Admin@org1.example.com/msp" peer0.org1.example.com peer channel join -b composerchannel.block
