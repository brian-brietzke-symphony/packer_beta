#/bin/sh

sudo yum update -y

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key
sleep 10

sudo yum install -y git jq groovy java-1.8.0-openjdk jenkins

sudo service jenkins start

sudo chkconfig jenkins on

wget -O $HOME/packer.zip https://releases.hashicorp.com/packer/1.4.0/packer_1.4.0_freebsd_amd64.zip
wget -O $HOME/terraform.zip https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip

unzip $HOME/packer.zip
unzip $HOME/terraform.zip

sudo mv $HOME/packer /usr/local/bin/packer
sudo mv $HOME/terraform /usr/local/bin/terraform

rm $HOME/*.zip
