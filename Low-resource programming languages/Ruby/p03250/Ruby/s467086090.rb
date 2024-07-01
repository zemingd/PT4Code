ary = gets.split.map(&:to_i).sort.reverse

puts ary[0]*10+ary[1]+ary[2]
