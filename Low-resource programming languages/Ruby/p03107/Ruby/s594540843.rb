s = gets.chomp.chars
puts [s.select { |c| c == "0" }.size, s.select { |c| c == "1" }.size].min