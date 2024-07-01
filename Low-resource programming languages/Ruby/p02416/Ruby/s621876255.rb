while (n = gets.chomp) != '0'
  puts n.split('').map(&:to_i).reduce(:+)
end