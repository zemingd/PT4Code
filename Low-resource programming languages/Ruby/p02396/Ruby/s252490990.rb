i=1
ARGF.each_line do |line|
  break if line = "0"
  puts "Case #{i}: #{line}"
  i += 1
end 