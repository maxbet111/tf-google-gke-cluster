variable "GOOGLE_REGION" {
  type        = string
  description = "Регіон Google Cloud (наприклад, us-central1)"
}

variable "GOOGLE_PROJECT" {
  type        = string
  description = "ID вашого проєкту в Google Cloud"
}

variable "GKE_NUM_NODES" {
  type        = number
  description = "Кількість вузлів у кластері"
  default     = 2
}

variable "MACHINE_TYPE" {
  type    = string
  default = "e2-medium"
}