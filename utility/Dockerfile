from ubi8
env PATH=$PATH:/root/kafka/bin
run yum install -y buildah podman git nmap bind-utils wget procps-ng net-tools lsof gcc make file iputils gdb java-21-openjdk
run cd; wget https://github.com/axboe/fio/archive/refs/tags/fio-3.19.tar.gz; tar xf fio-3.19.tar.gz; cd fio-fio-3.19; ./configure; make; make install
run cd; wget https://download.redis.io/redis-stable.tar.gz; tar xf redis-stable.tar.gz 
#run cd; cd redis-stable/src; make redis-cli                    
#run cd; cd redis-stable/src; cp redis-cli /usr/local/bin
run cd; wget https://download.oracle.com/otn_software/linux/instantclient/2112000/oracle-instantclient-basic-21.12.0.0.0-1.el8.x86_64.rpm; wget https://download.oracle.com/otn_software/linux/instantclient/2112000/oracle-instantclient-sqlplus-21.12.0.0.0-1.el8.x86_64.rpm; yum install oracle-instantclient-basic-21.12.0.0.0-1.el8.x86_64.rpm  oracle-instantclient-sqlplus-21.12.0.0.0-1.el8.x86_64.rpm -y
run cd; wget https://downloads.apache.org/kafka/3.6.1/kafka_2.13-3.6.1.tgz; mkdir kafka; tar xf kafka_2.13-3.6.1.tgz --strip-components=1 -C ./kafka
CMD /bin/sh -c "trap : TERM INT; sleep infinity & wait"