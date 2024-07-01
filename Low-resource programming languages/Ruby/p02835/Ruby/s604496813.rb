a1, a2, a3 = gets.split.map(&:to_i)

puts a1 + a2 + a3 >= 22 ? 'bust' : 'win'