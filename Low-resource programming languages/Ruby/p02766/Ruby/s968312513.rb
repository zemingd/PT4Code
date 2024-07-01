N, K = gets.chomp.split.map(&:to_i)

ans = 1
s = N / K
while s > 0
  s = s / K
  ans += 1
end

puts ans.to_s
