The barOverrides folder is used to hold files that are used to build an ACE workdiroverride configuration.

Overrides that you want to apply to a bar file when the server starts should added to the bar-override.properties file.

The following steps can be used to update/create the configuration

1. add your overrides to bar-override.properties. 
2. run script 01-bar-override.sh to build the configuration yaml file
3. apply the yaml bar-override.yaml in the namespace you require the configuration created/updated
4. restart server to pick up configuration 
5. validate the overrides are applied at server startup by reviewing the server console log.


