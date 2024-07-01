n, l = gets.split.map(&:to_i)
a = []
n.times { |i| a << i + l }
sum = 0
a.each { |i| sum += i }
puts sum < 0 ? sum + a.map{ |i| i.abs }.sort.first : sum - a.map{ |i| i.abs }.sort.first