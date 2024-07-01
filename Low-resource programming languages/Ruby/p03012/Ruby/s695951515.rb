n = gets.to_i
w = gets.split.map(&:to_i)
a = w.inject(:+)
b = 0
result = a
n.times do |i|
  a -= w[i]
  b += w[i]
  result = (a-b).abs if result>(a-b).abs
end
puts result
  