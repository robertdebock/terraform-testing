resource "local_file" "default" {
  content              = var.text
  filename             = "foo.bar"
  directory_permission = "0755"
  file_permission      = "0644"
}
