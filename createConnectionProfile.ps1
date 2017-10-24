#     TO BE USED for Windows PowerShell
#
#     Script for starting the Fabric containers
#     =========================================
#     This script is part of the course on Hyperledger Fabric
#     More information at http:\\ACloudFan.com
#     Contact: raj@acloudfan.com
#     Note:
#     ==========================
#     To be used ONLY on Windows platform
#     To be replaced by Hyperledger supported setup for Windows (once it is released)
#     
#     Disclaimer
#     ==========
#     Author can provide LIMITED support 
#     Provided on AS-IS basis

# Make dir
md ~\.composer-connection-profiles\hlfv1
md ~\.composer-credentials

# Copy the files
copy composer\creds\*  ~\.composer-credentials
copy config\hlfv1\connection.json  ~\.composer-connection-profiles\hlfv1
