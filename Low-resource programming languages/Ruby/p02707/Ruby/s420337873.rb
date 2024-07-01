# c
n = gets.to_i
a = gets.split.map(&:to_i) # n-1個

# p a
b = Array.new(n-1, 0)
(n-1).times do |i|
  b[a[i] - 1] += 1
end
puts b.join("\n")
p 0
