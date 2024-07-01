N = gets.to_i
d = gets.split(' ').map(&:to_i)
a = d.combination(2).to_a
sum = 0
a.each do |ar|
 sum += ar[0]*ar[1]
end

puts sum
