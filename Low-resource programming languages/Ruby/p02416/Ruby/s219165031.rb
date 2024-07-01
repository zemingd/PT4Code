while (n = gets) != "0\n"
  puts n.chars.map(&:to_i).reduce(:+)
end