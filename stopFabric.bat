::     Script for stopping the Fabric containers
::     =========================================
::     This script is part of the course on Hyperledger Fabric
::     More information at http://ACloudFan.com
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

::   Stop the fabric environment
docker-compose -f docker-compose.yml down
