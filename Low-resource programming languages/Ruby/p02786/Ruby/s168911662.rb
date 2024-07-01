H = gets.to_i
i = 0
while H >= 2**i do
  i += 1
end
puts 2**i-1