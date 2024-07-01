h = gets.to_i
n = 0
while h >= 2**n
  n += 1
end
puts 2 ** (n-1) * 2 -1