l, n = gets.split
s = []
n.to_i.times { s << gets.chomp }

s.sort.each { |i| printf i }