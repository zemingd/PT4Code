s = gets.strip

INF = 10 ** 6

n = 1  
if (s.size - 3) > 0
  n += s.size - 3
end

ans = INF 
n.times do |i|
  res = (753 - s[i, 3].to_i).abs
  ans = res if res < ans
end

puts ans
