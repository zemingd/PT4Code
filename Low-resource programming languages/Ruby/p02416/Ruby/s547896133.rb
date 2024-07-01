while (line = gets.chomp) != "0"
  puts line.split("").map(&:to_i).inject(:+)
end