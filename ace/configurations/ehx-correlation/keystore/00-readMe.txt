The keystore folder is used to hold files that are used to build an ACE keystore configuration.

The standard keystore configurations include the following:

1. aceclient.kdb - contains the private key for the ace client that is used to connect to the MQ qmgr
2. aceclient.sth - stash file for the aceclient keystore 
3. truststore.jks - trust/key store for the ace server. Contains ace private key as well as any public keys of signers

If your server needs any additional keystores add them here, create template yaml and update script 01-all-keystores.sh to build the yaml files.

If your server needs additional signers add them to the truststore.jks and rebuild the configuration yaml and apply it.

keystore configurations when mounted can be found in pod directory /home/aceuser/keystores

The following steps will build and apply the configuration:

1. if required add any additional trust or keystores to the directory
2. if required add any additional template yaml files for the additional trust or keystores
3. update script 01-all-keystores.sh and add commands to build your additional trust or keystore yaml
4. run script 01-all-keystores.sh to build the configuration
4. apply the yaml files built in the namespace you require the configuration created/updated. 
   
   The following command can be used to easily apply all yaml files: 
   
   for yaml in $(ls *.yaml); do oc apply -f $yaml; done

5. ensure ACE integrationserver includes the keystore configurations in it's yaml under spec/configurations
6. restart server to pick up configuration 
7. validate the configuration by rsh'ing into your pod and confirming the files are present in the /home/aceuser/keystores directory.
