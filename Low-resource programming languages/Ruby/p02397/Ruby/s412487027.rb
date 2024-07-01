ARGF.each_line do |line|
  arr = line.split.map(&:to_i).sort
  break if arr.all?(&:zero?)
  puts arr.join("\s")
end