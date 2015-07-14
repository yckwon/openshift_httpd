#add by /etc/sudoers 
#jboss ALL=NOPASSWD:/app/jboss/jboss-ews-?.?/httpd/sbin/apachectl
UNAME=`id -u -n`
if [ $UNAME != "jboss" ]
then
    echo "Start Fail!!  Use JBOSS_USER account to start JBoss HTTPD SERVER..."
    exit;
fi
sudo ./apachectl start
