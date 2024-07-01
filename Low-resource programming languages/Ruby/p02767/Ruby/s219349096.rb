n = gets.to_i
a = gets.split.map(&:to_i)
min = Float::INFINITY
sum = 0
(1..100).each do |i|
  sum = a.map{|x| (x-i)**2}.inject(:+)
  min = sum if sum < min
end
puts min