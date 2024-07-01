ary = gets.strip.split.map(&:to_i).sort!
puts ary[1] - ary[0] + ary[2] - ary[1]
