variable "common_tag" {
    type = map(any)
    default = {
        "env" = "dev"
    }
}
