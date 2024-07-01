x = []
ARGF.each_line do |line|
  x << line
end
x.each_with_index do |str, i|
  puts "case:#{i} str"
end