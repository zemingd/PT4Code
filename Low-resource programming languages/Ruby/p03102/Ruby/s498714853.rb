n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
n.times do
  a = gets.split.map(&:to_i)
  ans += 1 if a.zip(b).inject(0) { |sum, x| sum += x[0] * x[1] } + c > 0
end

puts ans
