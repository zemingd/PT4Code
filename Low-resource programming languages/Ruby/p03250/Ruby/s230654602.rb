num = gets.chomp.split.map(&:to_i)
ary = num.sort
puts 10*ary[2]+ary[1]+ary[0]