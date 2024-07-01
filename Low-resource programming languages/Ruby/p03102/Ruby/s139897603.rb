n, m, c = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
a = []
result = 0
for x in 1..n
  a << gets.chomp.split.map(&:to_i)
end
for y in 0..n - 1
  if b.zip(a[y]).reduce(0) { |s, e| s += e.reduce(:*) } + c > 0
    result = result + 1
  end
end
puts result
