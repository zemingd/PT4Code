n, l = gets.split.map(&:to_i)
a = []
n.times {|i| a << i + l}
sum = 0
a.each {|i| sum += i}
if a.sum < 0
  puts sum + a.map{|i| i.abs}.sort.first
else
  puts sum - a.map{|i| i.abs}.sort.first
end