i=1
ARGF.each_line do |line|
  puts "Case #{i}: #{line}"
  i += 1
end 