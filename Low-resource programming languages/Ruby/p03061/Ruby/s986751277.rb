n, as = gets.to_i, gets.split.map(&:to_i)

# aとbの最大公約数
def gcd(a, b)
  gcd(b, a) if b > a
  return b if (r = a % b).zero?
  gcd(b, r)
end

gcds = []
n.times do |i|
  gcds << gcd(as[i - 1], as[i])
end

ans = []
gcds.length.times do |i|
  ans << [gcds[i - 1], gcds[i]].max
end

puts ans.sort[1] || ans[0]