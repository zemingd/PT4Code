ary = gets.split.map(&:to_i)
puts ary.sort!.pop == ary.sum ? :Yes : :No