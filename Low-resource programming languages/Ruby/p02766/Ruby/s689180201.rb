n, k = gets.split.map(&:to_i)
d = 1
while n >= (k ** d) do
  d += 1
end
puts d
