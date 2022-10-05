#!/bin/bash
sudo yum update -y

# Install Java
sudo amazon-linux-extras install -y epel
sudo amazon-linux-extras install -y java-openjdk17
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install -y epel-release
sudo yum install -y java-17-openjdk-devel
sudo /usr/sbin/alternatives --config java <<< '1'

# Install Maven
sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven

# Install git
sudo yum install git -y

# Install Jenkins
sudo yum install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

sudo java -version
sudo mvn –-version
sudo git version
