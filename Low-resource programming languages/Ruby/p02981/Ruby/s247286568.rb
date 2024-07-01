ary = gets.chomp.split(" ").map(&:to_i)
puts ary[0] * ary[1] > ary[2] ? ary[2] : ary[0] * ary[1]