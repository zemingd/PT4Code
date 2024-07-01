n = gets.to_i
a = gets.split.map(&:to_i)
n.times do |i|
  a[i] -= i + 1
end
a.sort!
m = a[n/2]
result = 0
n.times do |i|
  result += (a[i] - m).abs
end

puts result