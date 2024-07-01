n = gets.chomp.to_i
ary1 = gets.chomp.split(" ").map(&:to_i)
puts ary1.combination(2).map{|elem| elem[0]*elem[1]}.inject(&:+)