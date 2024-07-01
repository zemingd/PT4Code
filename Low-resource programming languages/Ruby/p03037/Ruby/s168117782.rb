n, m = gets.split.map(&:to_i)
l = 0
r = n
m.times do |_i|
  a, b = gets.split.map &:to_i
  l = a if a > l
  r = b if b < r
end

puts (l..r).size