resource "local_file" "devops"{
filename = var.filename
content = var.content[0]
}
