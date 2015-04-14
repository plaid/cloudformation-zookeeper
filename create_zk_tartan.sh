#!/bin/bash
aws cloudformation create-stack \
    --template-body file://zookeeper-vpc.json \
    --stack-name zk-tartan \
    --capabilities CAPABILITY_IAM \
    --parameters \
        ParameterKey=KeyName,ParameterValue=Mesos-Tartan \
        ParameterKey=ExhibitorS3Bucket,ParameterValue=mesos-tartan \
        ParameterKey=ExhibitorS3Region,ParameterValue=us-east-1 \
        ParameterKey=ExhibitorS3Prefix,ParameterValue=zk-tartan \
        ParameterKey=VpcId,ParameterValue=vpc-93dd2bf6 \
        ParameterKey=Subnets,ParameterValue="subnet-258e470e subnet-546fed23 subnet-d2b01d8b" \
        ParameterKey=AdminSecurityGroup,ParameterValue=sg-9b205aff \
        ParameterKey=ZkAwsAccessKey,ParameterValue=TODO \
        ParameterKey=ZkAwsSecretAccessKey,ParameterValue=TODO \
        ParameterKey=LbSecurityGroup,ParameterValue=TODO \
        ParameterKey=AdminSecurityGroup,ParameterValue=TODO \
        ParameterKey=ServerSecurityGroup,ParameterValue=TODO \




