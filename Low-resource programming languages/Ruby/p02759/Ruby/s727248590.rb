a = gets.chomp.to_i

page = a/2
if a%2 == 1
  puts page + 1
else
  puts page
end