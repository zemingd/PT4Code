xs = []

while (line = gets.to_i) != 0
  xs << line
end

xs.each.with_index do |x, i|
  puts "Case #{i + 1}: #{x}"
end