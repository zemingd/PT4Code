h = gets.to_i
depth = 0

while h > 1
  h = h / 2.0
  depth = depth + 1
end
puts "#{(((2 ** depth) * 2 ) - 1)}"
