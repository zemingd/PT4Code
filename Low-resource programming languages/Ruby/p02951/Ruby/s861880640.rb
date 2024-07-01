a,b,c = gets.chomp.split.collect{ |item| item.to_i}

result = c - (a-b)
if result > 0
  puts result
else
  puts 0
end