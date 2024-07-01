num = gets.split.join.to_i
ans = "No"
100.times do |i|
  ans = "Yes" if (i ** 2 == num) 
end
puts ans
