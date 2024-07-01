inputs = gets.chomp.split("")

output = inputs.find_index(0)
if output >= 0
  puts output + 1
end