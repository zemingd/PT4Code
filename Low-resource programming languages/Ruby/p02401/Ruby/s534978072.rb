ARGF.each_line do |line|
  break if line =~ /\?/
  a, op, b = line.split
  a, b = [a, b].map(&:to_i)
  puts eval(line)
end