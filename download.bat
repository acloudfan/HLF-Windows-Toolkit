
::     Script for getting the Images for Fabric environment
::     ====================================================
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

docker pull hyperledger/fabric-peer:%ARCH%-1.0.1
docker pull hyperledger/fabric-ca:%ARCH%-1.0.1
docker pull hyperledger/fabric-ccenv:%ARCH%-1.0.1
docker pull hyperledger/fabric-orderer:%ARCH%-1.0.1
docker pull hyperledger/fabric-couchdb:%ARCH%-1.0.1