inputs = gets.chomp.split("").map(&:to_i)

output = inputs.find_index(0)
if output >= 0
  puts output
end