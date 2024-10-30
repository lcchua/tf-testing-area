variable "subnets_count" {
  description = "Number of public & private subnets"
  type        = map(number)
  default = {
    public  = 9,
    private = 9
  }
}