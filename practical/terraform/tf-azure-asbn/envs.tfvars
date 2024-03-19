env_configurations= [
    {
        env = "test"
        asbns = [
            {
                location = "westeurope"
                product = "product_name_2"
                cost_center = "cost_center_2"
                queues = ["first-test", "second-test"]
            },
            {
                location = "westeurope"
                product = "product_name_1"
                cost_center = "cost_center_1"
                queues = ["first-test", "second-test"]
            },
        ]
    },
    {
        env = "stage"
        asbns = [
            {
                location = "westeurope"
                product = "product_name_1"
                cost_center = "cost_center_1"
                queues = ["first-stage", "second-stage"]
            },
            {
                location = "westeurope"
                product = "product_name_2"
                cost_center = "cost_center_2"
                queues = ["first-stage", "second-stage"]
            },
        ]
    },
    {
        env = "prod"
        asbns = [
            {
                location = "westeurope"
                product = "product_name_1"
                cost_center = "cost_center_1"
                queues = ["first-prod", "second-prod"]
            },
            {
                location = "westeurope"
                product = "product_name_2"
                cost_center = "cost_center_2"
                queues = ["first-prod", "second-prod"]
            },
        ]
    }
]