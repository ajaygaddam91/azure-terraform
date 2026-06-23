variable "resourcegroup_name"{
    type=object({
        name=string,
        location=string
        tags=map(string)
    })
    
}