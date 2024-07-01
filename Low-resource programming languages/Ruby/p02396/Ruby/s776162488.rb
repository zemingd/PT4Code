xs = []
line = nil

while line != 0 do
  xs << line
  line = gets.to_i
end

xs.each.with_index do |x, i|
  puts "Case #{i + 1}: #{x}"
end