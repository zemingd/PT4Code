A1, A2, A3 = gets.split.map(&:to_i)

puts A1 + A2 + A3 >= 22 ? 'bust' : 'win'