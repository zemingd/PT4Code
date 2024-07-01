n = gets.to_i
w = gets.split(" ").map(&:to_i)

array = []
for i in 0..n-1
  s_1 = w[0..i].sum
  s_2 = w[i+1..-1].sum
  array <<(s_1 - s_2).abs
end

puts array.min