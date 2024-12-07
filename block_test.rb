def print_result
  result_from_block = yield
  puts result_from_block
end

# This will print out the number 9 to the console
print_result { 3 * 3 }

# Blocks can also be written using the do...end format
print_result do
  creature = "walrus"
  "I am the #{creature}!"
end

# Very cool: blocks have access to variables outside of their definition!

shopping_list = [:milk, :eggs, :cheese]
print_result do
  important_item = shopping_list.sample # select one at random
  "I hope I don't forget #{important_item}!!!"
end
