x = []
ARGF.each_line do |line|
  if line != "0"
    x << line.to_i
  end
end
x.each.with_index(1) do |num, i|
  puts "Case #{i}: num"
end