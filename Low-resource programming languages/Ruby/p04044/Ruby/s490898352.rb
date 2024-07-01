n, l = gets.split.map{|i| i.to_i}
a = []
n.times {a << gets.chomp}
puts a.sort.inject(:+)