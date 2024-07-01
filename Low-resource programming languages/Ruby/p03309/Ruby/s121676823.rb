n = gets.to_i
a = gets.split.map(&:to_i)

a.map!.with_index {|ai, i| ai - i - 1}

a.sort!
b = a.length % 2 == 0 ? a[(a.length / 2) - 1] : a[a.length / 2]
puts a.map{|x| (x - b).abs}.inject(:+)
