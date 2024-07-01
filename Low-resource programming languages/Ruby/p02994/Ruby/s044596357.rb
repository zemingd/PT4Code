n, l = gets.split.map(&:to_i)
a = []
n.times {|i| a << i + l}
if a.sum < 0
  puts a.sum + a.map{|i| i.abs}.sort.first
else
  puts a.sum - a.map{|i| i.abs}.sort.first
end