variable "x1"{

  default= "abc"
}

output "x1"{
  value=var.x1
}

variable "x2"{
  default="123"
}

output "x2"{
  value="value of x2 is: ${var.x2}"
}