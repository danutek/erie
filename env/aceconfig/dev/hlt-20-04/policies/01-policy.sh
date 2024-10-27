rm policy.base64 policy-config.yaml
base64 -i HLTPolicy.zip > policy.base64
sed -i -e 's/^/    /' *.base64
cat policy-config.yaml.template > policy-config.yaml
cat policy.base64 >> policy-config.yaml
