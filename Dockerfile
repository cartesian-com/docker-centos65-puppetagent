FROM centos:centos6
MAINTAINER Chris West <support@cartesian.com>
RUN rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm

# clean up the package list
RUN yum update -y
RUN yum clean all

# install deps needed by Beaker
RUN yum install -y sudo openssh-server openssh-clients curl ntpdate

# install common deps for services
RUN yum install -y git java-1.7.0-openjdk tar unzip vixie-cron

# install puppet agent
RUN yum install -y puppet
