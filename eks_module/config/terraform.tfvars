
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-0335c8cb17650378e","subnet-002aa502fcd7bf446","subnet-05365bd13d48450f7","subnet-0abb73c174bc2c857"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general"
        node_subnet_ids          = ["subnet-0335c8cb17650378e","subnet-002aa502fcd7bf446","subnet-05365bd13d48450f7","subnet-0abb73c174bc2c857"]

        tags = {
             "Name" =  "node1"
         } 
  }
}