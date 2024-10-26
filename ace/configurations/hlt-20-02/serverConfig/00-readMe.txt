The serverConfig folder is used to hold files that are used to build an ACE serverconf configuration.

Properties added to the file server.conf.txt will be added to the serverconf configuration and when mounted the contents will be found in pod directory /home/aceuser/ace-server/overrides/server.conf.yaml.

The following steps can be used to update/create the configuration

1. update the file server.conf.txt with any server.conf.yaml overrides you wish to have applied to your integration server 
2. run script 01-server-conf.sh to build the configuration yaml file
3. apply the yaml server.conf.yaml in the namespace you require the configuration created/updated
4. ensure ACE integrationserver includes configuration in it's yaml under spec/configurations
5. restart server to pick up configuration 
6. validate the updated server.conf.yaml is installed by rsh'ing into your pod and cat'ing file /home/aceuser/ace-server/overrides/server.conf.yaml
