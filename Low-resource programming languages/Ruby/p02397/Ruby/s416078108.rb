while line = gets do
  a, b = line.split.map(&:to_i).sort
  break if a + b == 0 && a * b == 0
  puts "#{a} #{b}"
end