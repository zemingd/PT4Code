n = gets.chomp.to_i
result = 0
(n-1).times do |i|
  result += (i + 1)
end
puts result