variable "env_configurations" {
    type = list(object({    
        env = string
        asbns = list(object({
            location = string
            product = string
            cost_center = string
            queues = list(string)
        }))
    }))
}