x = 0
gets.chars { |i| x += 1 if i == "+"; x -= 1 if i == "-" }
puts x