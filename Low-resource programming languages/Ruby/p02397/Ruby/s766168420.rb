while line = gets.chomp do
  break if line == "0 0"
  puts line.split(" ").map(&:to_i).sort.join(" ")
end