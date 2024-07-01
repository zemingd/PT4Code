N = gets.to_i
A = gets.split.map(&:to_i)
Amax = A.max
D = Array.new(Amax + 1, &:itself)
(2 .. Integer.sqrt(Amax)).each do |x|
  next if D[x] < x
  s = x
  while s <= Amax
    D[s] = x
    s += x
  end
end

dp = Array.new(A.max + 1, 0)
A.each do |a|
  while D[a] > 1
    m = D[a]
    dp[m] += 1
    while D[a] == m
      a /= m
    end
  end
end

dpmax = dp.max
if dpmax <= 1
  puts "pairwise coprime"
elsif dpmax == N
  puts "non coprime"
else
  puts "setwise coprime"
end