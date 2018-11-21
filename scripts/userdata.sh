#!/bin/bash -x
yum update -y aws-cfn-bootstrap
yum -y update
yum install -y ruby
yum groupinstall -y "Development Tools"
/bin/mkdir -p /var/www/html/
/usr/bin/git clone https://github.com/atangirala/nodejs-codedeploy.git
cd nodejs-codedeploy && /bin/mv * /var/www/html/
/bin/chmod +x /var/www/html/node-app
/bin/mv /var/www/html/node-app /etc/init.d/
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y nodejs
/etc/init.d/node-app start
cd /mnt
/usr/bin/git config --system credential.helper '!aws codecommit credential-helper $@'
/usr/bin/git config --system credential.UseHttpPath true
/usr/bin/git clone ${CodeRepo.CloneUrlHttp}
/bin/cp -r /var/www/html/* /mnt/${CodeCommitRepoName}
cd /mnt/${CodeCommitRepoName}
/usr/bin/git add . && /usr/bin/git commit -m "Initial Commit" && /usr/bin/git push origin master
cd /home/ec2-user
/usr/bin/aws s3 cp 's3://aws-codedeploy-${AWS::Region}/latest/codedeploy-agent.noarch.rpm' . --region ${AWS::Region}
yum install -y codedeploy-agent.noarch.rpm
