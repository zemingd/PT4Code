a, b, c, d = gets.chomp.split(' ').map(&:to_i)

t1 = a / d + ((a % d != 0) ? 1 : 0)
t2 = c / b + ((c % b != 0) ? 1 : 0)

puts t1 >= t2 ? 'Yes' : 'No'
