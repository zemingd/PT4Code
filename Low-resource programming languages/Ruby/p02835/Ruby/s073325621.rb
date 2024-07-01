a1, a2, a3 = gets.split(' ').map(&:to_i)
sum = a1 + a2 + a3
puts sum >= 22 ? 'bust' : 'win'