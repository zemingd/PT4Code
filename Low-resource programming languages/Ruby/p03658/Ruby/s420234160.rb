n, k = gets.split.map{|i| i.to_i}
l = gets.split.map{|i| i.to_i}
l = l.sort.reverse
ans = l.slice(0...k).inject(:+)
puts ans