line = gets.chomp.split
arr = line.map { |s| s.to_i }
arr.sort!
puts arr.join(' ')