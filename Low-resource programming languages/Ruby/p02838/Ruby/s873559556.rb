n = gets.to_i
a = gets.split.map(&:to_i)

mod = 10 ** 9 + 7
ans = 0
60.times do |d|
  one, zero = 0, 0
  a.each do |ai|
    one += 1 if ai[d] == 1
    zero += 1 if ai[d] == 0
  end
  ans += one * zero * (2 ** d)
  ans %= mod
end
p ans
