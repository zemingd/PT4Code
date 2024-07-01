n = gets.chomp.split('')
puts (n[0] == n[1] && n[0] == n[2]) || (n[3] == n[2] && n[3] == n[1]) ? 'Yes' : 'No'
