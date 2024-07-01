n, k = gets.split(' ').map(&:to_i)
ans = 0.0
for i in 1..n
  m = Math.log2(k / i.to_f).ceil
  ans += m >= 1 ? 1.0/(2**m) : 1.0
end
ans /= n
printf "%.10f" % ans