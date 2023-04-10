# Define a list of strings
variable "fruits" {
  type = list(string)
  default = ["apple", "banana", "orange"]
}

# Define a set of numbers
variable "numbers" {
  type = set(number)
  default = [1, 2, 3, 3] # the set will only have unique values
}

# Define an object with nested structures
variable "person" {
  type = object({
    name = string
    age = number
    address = object({
      street = string
      city = string
      state = string
      zip = string
    })
    hobbies = list(string)
  })
  default = {
    name = "John Doe"
    age = 30
    address = {
      street = "123 Main St"
      city = "Anytown"
      state = "CA"
      zip = "12345"
    }
    hobbies = ["reading", "gardening"]
  }
}

# Output the values of the variables
output "fruits" {
  value = var.fruits
}

output "numbers" {
  value = var.numbers
}

output "person" {
  value = var.person
}
