#Env related config parsing
locals {
    all_envs = flatten([
        for index, env_config in var.env_configurations : [
            for asbn in env_config.asbns: [
              for queue in asbn.queues: 
                merge(
                  { env_name = env_config.env },
                  { queue_name = queue },
                  { asbn_name = replace("${asbn.product}-${env_config.env}-asbn","_","") },
                  { rg_name = replace("${asbn.product}-${env_config.env}-rg","_","-") },
                  { location = asbn.location },
                  { tags ={
                      product = asbn.product
                      cost_center = asbn.cost_center
                  }}
                )
            ]
        ]
    ])
}