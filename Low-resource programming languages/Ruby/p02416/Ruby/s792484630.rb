loop do
  x = gets.to_i
  break if x == 0

  puts x.to_s.split("").to_a.map(&:to_i).inject(:+)
end