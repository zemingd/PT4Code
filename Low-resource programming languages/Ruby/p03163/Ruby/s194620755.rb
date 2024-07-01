n, max_w = gets.chomp.split(' ').map(&:to_i)
strs = n.times.map { gets.chomp.split(' ').map(&:to_i) }

dp = Array.new(max_w + 10, 0)
dp[0] = 0
ans = 0
strs.each do |w, v|
  (max_w - w).downto(0) do |idx|
    nv = dp[idx] + v
    nw = idx + w
    dp[nw] = nv if dp[nw] < nv
  end
end
print dp[max_w]
