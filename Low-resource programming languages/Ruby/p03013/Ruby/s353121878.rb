n, m = gets.split.map(&:to_i)

as = Array.new(n, true)
m.times do
  i = gets.to_i
  as[i] = false
end

ans = Array.new(n + 1, 0)
mod = 10 ** 9 + 7

ans[0] = 1
ans[1] = 1 if as[1]

2.upto(n) do |i|
  ans[i] += ans[i - 1] if as[i - 1]
  ans[i] += ans[i - 2] if as[i - 2]
  ans[i] %= mod
end

puts ans[n]
