n, m = gets.chop.split.map(&:to_i)

a = gets.chop.split.map(&:to_i)

for _ in 1..m do
  i = a.index(a.max)
  a[i] /= 2
end

sum = a.inject(0) { |result, n| result + n.floor }

puts sum
