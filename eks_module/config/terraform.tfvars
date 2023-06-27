
aws_eks_cluster_config = {

      "pace-services-training" = {

        eks_cluster_name         = "pace-services-training"
        eks_subnet_ids = ["subnet-08f70fba6ab245fb7","subnet-00af9a6d7423858ac","subnet-06b2c2953af2b7f22"]
        tags = {
             "Name" =  "pace-services-training"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "pace-services-training"
        node_group_name          = "ng-worker"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-08f70fba6ab245fb7","subnet-00af9a6d7423858ac","subnet-06b2c2953af2b7f22"]

        # tags = {
        #      "Name" =  "node1"
        #  } 
  }
}