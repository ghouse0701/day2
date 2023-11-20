resource "local_file" "my_pets" {
filename = "Pets.txt"
content = "I Hate Pets!"
}
resource "random_pet" "my_pets" {
prefix = "Miss"
separator = "."
length = "1"
}
