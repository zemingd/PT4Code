x,y = gets.chomp.split
if x.to_i(16) == y.to_i(16)
  puts '='
elsif x.to_i(16) < y.to_i(16)
  puts '<'
else x.to_i(16) > y.to_i(16)
  puts '>'
end
