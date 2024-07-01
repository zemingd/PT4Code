N = gets.chomp.split('')
puts (N[0] == N[1] && N[1] == N[2]) || (N[1] == N[2] && N[2] == N[3]) ? 'Yes' : 'No'
