a, b, _c, d = gets.split(" ").map{|item| item.to_i}

if a >= d
  puts d
elsif a + b >= d
  puts a
else
  puts a + ((d - a - b)* -1)
end

