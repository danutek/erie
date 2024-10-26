./02-bar-override.properties.sh
rm bar-override.yaml bar-override.properties.base64
base64 bar-override.properties  > bar-override.properties.base64
sed -i -e 's/^/    /' *.base64
cat bar-override.yaml.template > bar-override.yaml
cat bar-override.properties.base64 >> bar-override.yaml
