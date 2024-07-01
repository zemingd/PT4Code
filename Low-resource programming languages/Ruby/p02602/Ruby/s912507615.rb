n, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)

res = []
(n-k).times do |i|
  res << (a[i] < a[i+k])
end

puts res
