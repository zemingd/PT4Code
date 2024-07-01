ary = gets.chomp.split(" ").map(&:to_i)
print ary.sort.join(" "), "\n"