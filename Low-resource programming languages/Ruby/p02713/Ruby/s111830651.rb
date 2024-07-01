mod = 10 ** 9 + 7

k,*_ = gets.split.map(&:to_i)
n = 3

a = [1] * (k+1)
b = Array.new(k+1){|i| i }

(k/2).downto(1) do |i|
  cnt = ( k/i ).pow( n, mod )
  (i*2).step(k, i){|j| cnt = ( cnt - a[j] ) % mod }
  a[i] = cnt
  b[i] = i * cnt % mod
end

ans = 0
(1..k).each do |i|
  ans += b[i]
  ans %= mod if ans >= mod
end

puts ans