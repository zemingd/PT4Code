n = gets.to_i
a = gets.split(" ").map {|x| x.to_i - 1}
b = [0] * n
(n-1).times do |i|
  j = a[i]
  b[j] += 1
end
n.times do |i|
  puts b[i]
end
