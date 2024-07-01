a,b,c = gets.chomp.split(' ').map(&:to_i)

puts ((a+b+a*b) < c) ? 'Yes' : 'No'
