h = gets.to_i
ans = 1
1.step do |i|
  break if (h >> i) == 0
  ans <<= 1
  ans += 1
end
puts ans