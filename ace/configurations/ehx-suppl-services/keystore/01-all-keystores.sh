rm truststore.yaml truststore.jks.base64 aceclient-kdb.yaml aceclient.kdb.base64 aceclient-sth.yaml aceclient.sth.base64 sdmcentralkeystore.yaml sdmcentralkeystore.jks.base64 sdmcentralkeystore.kdb.base64 sdmcentralkeystore.rdb.base64 sdmcentralkeystore.sth.base64 
base64 aceclient.kdb > aceclient.kdb.base64
base64 aceclient.sth > aceclient.sth.base64
base64 truststore.jks > truststore.jks.base64
base64 sdmcentralkeystore.jks > sdmcentralkeystore.jks.base64
base64 sdmcentralkeystore.kdb > sdmcentralkeystore.kdb.base64
base64 sdmcentralkeystore.rdb > sdmcentralkeystore.rdb.base64
base64 sdmcentralkeystore.sth > sdmcentralkeystore.sth.base64
sed -i -e 's/^/    /' *.base64
cat aceclient-kdb.yaml.template > aceclient-kdb.yaml
cat aceclient.kdb.base64 >> aceclient-kdb.yaml
cat aceclient-sth.yaml.template > aceclient-sth.yaml
cat aceclient.sth.base64 >> aceclient-sth.yaml
cat truststore.yaml.template > truststore.yaml
cat truststore.jks.base64 >> truststore.yaml
cat sdmcentralkeystore.yaml.template > sdmcentralkeystore.yaml
cat sdmcentralkeystore.jks.base64 >> sdmcentralkeystore.yaml
cat sdmcentralkeystore-kdb.yaml.template > sdmcentralkeystore-kdb.yaml
cat sdmcentralkeystore.kdb.base64 >> sdmcentralkeystore-kdb.yaml
cat sdmcentralkeystore-rdb.yaml.template > sdmcentralkeystore-rdb.yaml
cat sdmcentralkeystore.rdb.base64 >> sdmcentralkeystore-rdb.yaml
cat sdmcentralkeystore-sth.yaml.template > sdmcentralkeystore-sth.yaml
cat sdmcentralkeystore.sth.base64 >> sdmcentralkeystore-sth.yaml
