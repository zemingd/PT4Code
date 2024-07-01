while (line = gets.chomp) != "0"
  puts line.chars.map(&:to_i).reduce(:+)
end