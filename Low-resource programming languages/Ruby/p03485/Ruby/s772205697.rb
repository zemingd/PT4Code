ary = gets.chomp.split(" ").map(&:to_f)
a = ary[0]
b = ary[1]
puts ((a+b)/2).ceil