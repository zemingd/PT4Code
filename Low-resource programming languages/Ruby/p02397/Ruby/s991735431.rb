loop do
  ar = gets.chomp.split.map(&:to_i)
  break if ar[0] == 0 && ar[1] == 0
  puts ar.sort.join(" ")
end