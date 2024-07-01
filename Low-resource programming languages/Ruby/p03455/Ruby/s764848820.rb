a,b = gets.chomp.split('').map(&:to_i)
puts (a*b).odd? ? 'Odd' : 'Even'