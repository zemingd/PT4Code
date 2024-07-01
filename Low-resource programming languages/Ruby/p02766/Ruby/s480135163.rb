n,K = gets.split.map &:to_i
ans = 0
while (n > 0) do
  ans += 1
  n /= K
end
p ans