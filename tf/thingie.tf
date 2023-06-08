resource "local_file" "thingie_out" {
  filename        = "./omg-from-local-file-in-top-level-module"
  content = "fish"
}