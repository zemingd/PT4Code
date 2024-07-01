xs = []
while line = gets do
  xs << line
end

xs.each.with_index do |x, i|
  puts "Case #{i + 1}: #{x}"
end