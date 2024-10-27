rm properties.jar all-generics.zip all-generics.base64 all-generics.yaml
jar cvf properties.jar *.properties
zip all-generics.zip db2dsdriver.cfg properties.jar odbcinst.ini log4j.xml
base64 -i all-generics.zip > all-generics.base64
sed -i -e 's/^/    /' *.base64
cat all-generics.yaml.template > all-generics.yaml
cat all-generics.base64 >> all-generics.yaml
