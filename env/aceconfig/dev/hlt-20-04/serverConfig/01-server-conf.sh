rm server.conf.yaml server.conf.base64
base64 -i server.conf.txt  > server.conf.base64
sed -i -e 's/^/    /' *.base64
cat server-conf.yaml.template > server.conf.yaml
cat server.conf.base64 >> server.conf.yaml
