loop do
  line = gets
  break if line.nil?
  a, b = line.chomp.split.map(&:to_i)
  puts (a + b).to_s.length
end