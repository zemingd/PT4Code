loop do 
  line = gets
  break unless line
  a, b = line.split.map(&:to_i)
  puts (a + b).to_s.size
end