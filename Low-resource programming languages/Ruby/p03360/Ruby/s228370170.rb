ary = gets.chomp.split.map(&:to_i)
k = gets.chomp.to_i
ary.sort!

puts ary[0] + ary[1] + ary[2]* (2 ** k)
