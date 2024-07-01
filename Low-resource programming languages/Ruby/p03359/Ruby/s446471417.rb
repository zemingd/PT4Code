a, b = gets.chomp.split.map(&:to_i)
if a > b
  puts a -= 1
else
  puts a
end
