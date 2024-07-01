a, b = gets.chomp.split(" ").map(&:to_i)
(a*b)%2==0 ? 'Even' : 'Odd'