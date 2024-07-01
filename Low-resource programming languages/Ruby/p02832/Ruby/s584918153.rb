n = gets.to_i
a = gets.split.map(&:to_i)

m = 0
k = 1
until a.empty?
  i = a.find_index(k) || a.size
  m += i
  a.shift(i + 1)
  k += 1
end

m = -1 if m == n

puts m
