variable "location" {
  type        = string
  default     = "westeurope"
  description = "Where should Azure Resource be located"
}

variable "custom_tags" {
  type        = map
  default     = {}
  description = "Custom tags associated to every Azure Resource"

}
