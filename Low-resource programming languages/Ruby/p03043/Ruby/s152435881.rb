n,k = gets.split.map(&:to_i)

cnt = 1.0
while k > n
  k = k/2
  cnt = cnt/2
end

ans = 0
n.times do |i|
  ans += cnt/n
  cnt = cnt/2
end

puts ans
