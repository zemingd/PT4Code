x = []
ARGF.each_line do |line|
  x << line.to_i
end
x.each.with_index(1) do |str, i|
  puts "Case #{i}: str"
end