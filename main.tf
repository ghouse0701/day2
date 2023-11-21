resource "local_file" "my_pets" {
filename = var.filename
content = var.content
}
resource "random_pet" "my_pets" {
prefix = "Miss"
separator = "."
length = "1"
}
