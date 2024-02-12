FROM amazon/aws-cli
RUN yum update -y && yum install -y wget openssl && yum clean all \
&&  wget -q -O kubectl https://storage.googleapis.com/kubernetes-release/release/v1.7.0/bin/linux/amd64/kubectl \
&& chmod +x kubectl \
&& mv kubectl /usr/local/bin
WORKDIR /tmp