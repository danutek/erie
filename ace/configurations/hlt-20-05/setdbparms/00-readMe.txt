The setdbparms folder is used to hold files that are used to build an ACE setdbparms configuration.

Entries added to the file setdbparms.txt will be applied via a mqsisetdbparms command when the server starts. Note the entries can take on different formats and are documented in the ACE reference.

The following steps can be used to update/create the configuration

1. update the file setdbparms.txt with any mqsisetdbparms your integration server requires
2. run script 01-setdbparms.sh to build the configuration yaml file
3. apply the yaml db-parms-config.yaml in the namespace you require the configuration created/updated
4. ensure ACE integrationserver includes configuration in it's yaml under spec/configurations
5. restart server to pick up configuration 
6. validate the updated mqsisetdbparms are applied by checking pod directory /home/aceuser/ace-server/config/registry/integration_server/CurrentVersion/DSN 
