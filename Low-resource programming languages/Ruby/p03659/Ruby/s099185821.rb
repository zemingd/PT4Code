n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = [0]
n.times do |i|
  b[i+1] = b[i] + a[i]
end

ans = Float::INFINITY

(n-1).times do |i|
  x = b[i+1]
  y = b[n] - b[i+1]
  tmp = (x-y).abs
  ans = tmp if ans > tmp
end

puts ans
