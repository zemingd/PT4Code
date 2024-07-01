# https://atcoder.jp/contests/abc175/tasks/abc175_c

X, K, D = gets.split.map(&:to_i)

sgn = X >= 0 ? 1 : -1
x = X.abs

if x >= K * D
  puts (x - K * D)
  exit 0
end

q, r0 = x.divmod(D)
r1 = D - r0
if (K - q).even?
  puts r0
else
  puts r1
end
