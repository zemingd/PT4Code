loop do
  a, b = gets.split(" ").map(&:to_i)
  puts (a + b).to_s.length
end