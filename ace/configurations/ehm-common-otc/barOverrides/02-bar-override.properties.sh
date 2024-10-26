rm -f bar-override.properties
for i in  `find . -maxdepth 1 -type d | cut -c 3- | awk 'NF {print $0}'`
do
 cd $i
 j=`pwd | awk -F/ '{print $NF"/"}'`
 k=`ls -d */`
 cat  bar-override.properties | awk -v x=$j ' length { print "/"x$0 } ' >> ../bar-override.properties
 for l in $k
 do
  m="$j$l"
  cat  bar-override.properties | awk -v x=$m ' length { print "/"x$0 } ' >> ../bar-override.properties
 done
 cd ..
done
