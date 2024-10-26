The generic folder is used to hold files that are used to build an ACE generic configuration.

Files added to the generic configuration will be mounted in the server and be found in directory /home/aceuser/generic.

The following steps will add a file to the configuration:

1. add new-file to generics folder
2. update script 01-all-generics.sh and add new-file to the zip command
3. run script 01-all-generics.sh to build the configuration
4. apply the yaml all-generics.yaml in the namespace you require the configuration created/updated
5. ensure ACE integrationserver includes configuration in it's yaml under spec/configurations
6. restart server to pick up configuration 
7. validate the configuration by rsh'ing into your pod and confirming the files are present in the /home/aceuser/generic directory.
