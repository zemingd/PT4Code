ary = gets.split(" ").map(&:to_i).sort
k = gets.chomp.to_i

puts ary[0] + ary[1] + ary[2]*2**k
