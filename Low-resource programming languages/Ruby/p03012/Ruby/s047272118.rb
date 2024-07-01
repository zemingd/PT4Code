n = gets.to_i
w = gets.split(" ").map(&:to_i)

array = []
for i in 1..n-1
  s_1 = w[0..i-1]
  s_2 = w[i..n-1]
  abs = (s_1.sum - s_2.sum).abs
  array.push(abs)
end
puts array.min