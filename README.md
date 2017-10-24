
# Local Composer Runtime for Windows

Hyperledger Composer development team has provided limited support for the local installation of Composer on Windows platform. The scripts and setup provided here is based on the Ubuntu VM setup for Composer. Windows users can use this for launching a local Composer/Fabric Runtime environment.

* This script is part of the course on Hyperledger Fabric

* More information at [ACloudFan.com](http://ACloudFan.com)

* Contact: raj@acloudfan.com

## Pre-Requisites
* Please refer to the lectures in the section on "Dev Environment Setup"
* Docker or Docker toolkit

## Validate the connection
1. Stop the fabric

   >  composer network ping -n doeNotExist -p hlfv1 -i PeerAdmin -s DoesNotMatter

   This would give an error indicating that the connection could not be created

2. Start the fabric

 >  composer network ping -n doeNotExist -p hlfv1 -i PeerAdmin -s DoesNotMatter

   This time the error will indicate that >> Error: could not find chaincode with name 'doeNotExist' 
   Which basically tells us that connection profile worked - error is normal because we have not yet deployed any network app

3. Troubleshooting if #2 fails on windows with Docker Toolkit  (discussed in lecture video)

    you need to check the IP address of the VM and update the connection profile URL(s) with the IP address
    
 >  docker-machine ip default
    This command will give the IP address of the default VM


## Setup connection profile for remote fabric instance
1. Make sure your HL Fabric is up on Remote VM

2. Create a subfolder under ~/.composer-connection-profiles   give it the same name as connection profile (awshlfv1)

3. Copy the file ~/.composer-connection-profiles/hlfv/connection.json to ~/.composer-connection-profiles/awshlfv/connection.json

4. Open the file in notepad ~/.composer-connection-profiles/awshlfv/connection.json

5. Get the IP address for the remote VM

6. Replace the IP address in URLs in the file ~/.composer-connection-profiles/awshlfv/connection.json

7. Validate using the command 
  
   >  composer network ping -n doeNotExist -p hlfv1 -i PeerAdmin -s DoesNotMatter



## Disclaimer 
* Author can only provide LIMITED support 
* Provided on AS-IS basis

## Connection Profile Setup
1. Powershell (>cd ~)
   cmd (>cd %HOMEPATH%)

   Copy Home Directory Path = HOME-PATH

2. > md .composer-connection-profiles\hlfv1
3. > md .composer-credentials

4. cd fabric-tools directory

5. copy composer\creds\*  `Paste HOME-PATH here`\.composer-credentials
6. copy composer\config\hlfv1\connection.json  `Paste HOME-PATH here`\.composer-connection-profiles\hlfv1


  tools:
    container_name: tools
    image: hyperledger/fabric-ccenv:x86_64-1.0.3
    # command: mkdir ~/.composer-credentials  &&  mkdir -p ~/.composer-connection/profile/hlfv1 && tail -f /dev/null
    command: tail -f /dev/null
    volumes:
        - /c/host/var:/host/var/run/
        - /c/composer:/etc/hyperledger/configtx
        - /c/composer/var:/etc/hyperledger/connection
    depends_on:
        - orderer.example.com
        - peer0.org1.example.com
        - ca.org1.example.com