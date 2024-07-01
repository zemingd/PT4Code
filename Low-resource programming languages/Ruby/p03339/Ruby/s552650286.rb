# N
# S

n = gets.chomp.to_i
s = gets.chomp

l = []
r = []

l[0] = 0
r[n - 1] = 0

aux = 0

for i in (0...(n-1)) do
  if s[i] == "W"
    aux += 1
  end

  l[i + 1] = aux
end

aux = 0

for i in (1...n).reverse_each.to_a do
  if s[i] == "E"
    aux += 1
  end

  r[i - 1] = aux
end

sum = l.zip(r).map do |i, j|
  i + j
end

puts sum.min
