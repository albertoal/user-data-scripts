#!/bin/bash
echo "Starting user data script cloudwatch-metrics.sh"
set -x
yum update -y
yum install -y perl-DateTime perl-Sys-Syslog perl-LWP-Protocol-https perl-Sys-Syslog
cd /home/ec2-user
wget http://aws-cloudwatch.s3.amazonaws.com/downloads/CloudWatchMonitoringScripts-1.2.1.zip
unzip CloudWatchMonitoringScripts-1.2.1.zip
rm CloudWatchMonitoringScripts-1.2.1.zip
chown ec2-user:ec2-user aws-scripts-mon
echo "*/5 * * * * ec2-user /home/ec2-user/aws-scripts-mon/mon-put-instance-data.pl --mem-util --disk-space-util --disk-path=/ --from-cron" >> /etc/crontab

