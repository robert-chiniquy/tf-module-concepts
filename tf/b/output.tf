output "b_out" {
  # string concat of input variable passed to b (not to be) from main.tf
  # main.tf got it from module a
  value = "input variable passed to b: ${var.value_from_a}"
}
