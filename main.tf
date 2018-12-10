variable "numbers" {
  default = 10
}

resource "random_integer" "machines" {
  min   = 1
  max   = 100
  count = "${var.numbers}"
}

output "numbers" {
  value = "${random_integer.machines.*.result}"
}
