ary = gets.chomp.chars.map(&:to_i)
puts ary[0] == ary[2] ? "Yes" : "No"