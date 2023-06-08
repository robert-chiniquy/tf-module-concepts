
# no need to reference thingie.tf because in terraform it has the same status
# (a file in this directory where terraform apply is run)
# as main.tf does
# (despite main.tf having a more imposing name)

# (notably, tf does not just automatically recur into subdirectories as submodules)
# they must be explicitly referenced with the module directive


module "a" {
  source = "./a"
}

# dependency on module a means b will not run until a completes
module "b" {
  source = "./b"
  value_from_a = module.a.a_out
}

module "c" {
  source = "./c"

  for_each = toset(["apple", "trout"])
  file_content = each.value
}

module "c-2" {
  source = "./c"
  file_content = "hello"
}

resource "local_file" "fileoutput" {
  filename        = "./localfile-disaster"
  content = module.a.a_out
}