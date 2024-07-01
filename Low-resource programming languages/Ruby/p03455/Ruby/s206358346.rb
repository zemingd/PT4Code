a = gets.chomp.split(' ').map(&:to_i)
puts a[0]*a[1]%2 == 0 ? 'Even' : 'Odd'