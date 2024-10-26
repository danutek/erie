rm setdbparms.base64 db-parms-config.yaml
base64 setdbparms.txt > setdbparms.base64
sed -i -e 's/^/    /' *.base64
cat db-parms-config.yaml.template > db-parms-config.yaml
cat setdbparms.base64 >> db-parms-config.yaml
