N = gets.to_i
S = gets.chomp
if N.even? && S == (S[0, N / 2]) * 2
  puts 'Yes'
 else
  puts 'No'
end