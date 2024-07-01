x=gets.to_i
y = x/11
z = x%11
puts 2*y + (z<=6 ? 1 : 2)