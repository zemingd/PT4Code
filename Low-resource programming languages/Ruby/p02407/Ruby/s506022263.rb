ARGF.each_with_index do |line, i|
  next if i = 0
  x = line.split.to_i
end
puts x.reverse.join(" ")