n, m = gets.split("\s").map(&:to_i)
a = gets.split("\s").map(&:to_i).sort
result = 0

m.times do
  a[-1] /= 2
  if a[-1] < a[-2]
    x = a[-1]
    a[-1] = a[-2]
    a[-2] = x
end

n.times do |i|
  result += a[i]
end

puts result