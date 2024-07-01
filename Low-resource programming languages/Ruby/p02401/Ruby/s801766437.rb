ARGF.each_line do |line|
  break if line =~ /\d \? \d/
  puts eval(line)
end