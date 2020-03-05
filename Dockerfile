#
# Import ubuntu image from default dockerhub reposistory
# 
FROM 	ubuntu
#
# Label for this DOCKERFILE
# 
LABEL 	maintainer="Rajesh Prashanth Anandavadivel <rajeshprasanth@rediffmail.com>" version="1.0"
#
# Creating user qe-test
# 
RUN	useradd -m -d /home/qe-test qe-test
RUN	passwd -d qe-test
#
# Prepare for prerequisites
#
RUN	apt-get update
RUN	apt-get --yes install tar sed gawk gfortran gcc g++ make xz-utils
RUN	apt-get --yes install wget curl
RUN	apt-get autoremove -y
