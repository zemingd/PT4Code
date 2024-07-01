loop do
  n = gets.chomp
  break if n == "0"
  puts n.split("").map(&:to_i).sum
end
