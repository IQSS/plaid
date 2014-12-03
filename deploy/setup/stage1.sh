#!/bin/sh
echo "Setting up plaidtemplate"
# Platform for
# Lightweight
# Applications from
# IQSS
# Data Science
rpm --import http://ftp.scientificlinux.org/linux/scientific/6.4/x86_64/os/RPM-GPG-KEY-sl
yum install -y http://ftp.scientificlinux.org/linux/scientific/6.4/x86_64/external_products/softwarecollections/yum-conf-softwarecollections-1.0-1.el6.noarch.rpm

yum install -y python27-mod_wsgi 

cp /git/plaidtemplate/deploy/files/opt/rh/httpd24/root/etc/httpd/conf.d/plaidtemplate.datascience.iq.harvard.edu.conf /opt/rh/httpd24/root/etc/httpd/conf.d/plaidtemplate.datascience.iq.harvard.edu.conf

mkdir /opt/rh/httpd24/root/var/www/plaidtemplate
cp /git/plaidtemplate/deploy/files/opt/rh/httpd24/root/var/www/plaidtemplate/myapp.wsgi /opt/rh/httpd24/root/var/www/plaidtemplate/myapp.wsgi

/etc/rc.d/init.d/httpd24-httpd start

curl -s http://localhost
