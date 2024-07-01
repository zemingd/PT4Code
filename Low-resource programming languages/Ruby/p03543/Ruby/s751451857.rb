N = gets.chomp
if (N[0] == N[1] && N[1] == N[2]) || N[1] == N[2] && N[2] == N[3]
  puts 'Yes'
else
  puts 'No'
end