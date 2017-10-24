::     TO BE USED for Windows Command Shell
::
::     Script for starting the Fabric containers
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

:: Make dir
md %HOMEPATH%\.composer-connection-profiles\hlfv1
md %HOMEPATH%\.composer-credentials

:: Copy the files
copy composer\creds\*  %HOMEPATH%\.composer-credentials
copy config\hlfv1\connection.json  %HOMEPATH%\.composer-connection-profiles\hlfv1
