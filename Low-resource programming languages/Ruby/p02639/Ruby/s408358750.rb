inputs = gets.chomp.split(" ").map(&:to_i)
# '1 2 3 0 4'.chomp.split(" ").map(&:to_i)

output = inputs.find_index(0)
if output >= 0
  puts output + 1
end