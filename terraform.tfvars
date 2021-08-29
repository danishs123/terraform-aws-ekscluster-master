###########----------- CLUSTER -----------###########

project             =   "COE"
environment         =   "dev"
cidr-blocks         =   ["202.54.0.0/16"]
public-subnet-ids   =   ["subnet-06a02b2b6885a507c","subnet-01223082d4eb71486"]
private-subnet-ids  =   ["subnet-04b2001a0a715970e","subnet-0b8f14907f69310de"]
vpc-id              =   "vpc-03a497893a296095f"
eks-version         =   "1.15"


###########----------- NODES -----------###########

node-group-name           =   ["eks-node-group1","eks-node-group2","eks-node-group3"]
node-group-count          =   "3"
node-private-subnet-ids   =   ["subnet-06a02b2b6885a507c","subnet-01223082d4eb71486"]
ami-type                  =   "AL2_x86_64"
ec2-instance-type         =   ["t3.medium"]
disk-size                 =   "20"
desired-size              =   "1"
max-size                  =   "1"
min-size                  =   "1"
ec2-ssh-key               =   "madhup-keypair"