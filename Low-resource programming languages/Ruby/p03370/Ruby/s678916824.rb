n = gets.to_i
d, x= gets.split(" ").map(&:to_i)
a = n.times.map{gets.to_i }
sum = 0
n.times do |i|
  sum += (d - 1) / a[i] + 1
end

puts sum += x
