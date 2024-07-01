mod = 1000000007
n = gets.to_i
a = gets.split.map(&:to_i)
len = a.max.to_s(2).length

ans = 0
len.times do |l|
  n_1 = a.count { |x| x[l] == 1 }
  ans += ((n - n_1) * n_1 * ( i >= 30 ? ((2 ** l) % mod) : (2 ** i) ) ) % mod
  ans %= mod
end
puts ans
