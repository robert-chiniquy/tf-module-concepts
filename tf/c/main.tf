resource "local_file" "c_file_out" {
  filename        = "./omg-from-submodule-c-${var.file_content}"
  content = var.file_content
}