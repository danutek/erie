The policies folder is used to hold files that are used to build an ACE policyproject configuration.

Files added to the policy configuration contents will be found in directory /home/aceuser/ace-server/overrides when the server is configured to mount the configuration.

The following steps can be used to update/create the configuration

1. if updating an existing policy zip file import the existing .zip into your ACE IDE as a projecct interchange file
2. if creating a new policy file create a policy project in your ACE IDE 
3. update/create you polcies in the ACE IDE
4. export the policy project as a PI file (.zip) using the ACE tooling to the policies folder
5. run script 01-policy.sh to build the configuration yaml file
6. apply the yaml policy-config.yaml in the namespace you require the configuration created/updated
7. ensure ACE integrationserver includes configuration in it's yaml under spec/configurations
8. restart server to pick up configuration 
9. validate the configuration by checking that your policies are present in pod directory /home/aceuser/ace-server/overrides


