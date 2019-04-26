#/bin/sh

sudo yum update -y

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key
sleep 10

sudo yum install -y git jq groovy java-1.8.0-openjdk jenkins

sudo service jenkins start

sudo chkconfig jenkins on
