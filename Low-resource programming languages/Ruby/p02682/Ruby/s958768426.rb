a, b, c, count = gets.chomp.split(" ").map{|i| i.to_i}

point = a

count -= a + b

if count <= 0
  puts point
elsif count > 0
  point -= count
  puts point
end
