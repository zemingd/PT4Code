N = gets.chomp.to_i
S = gets.chomp

s_counts = S.split('').count('#')
d_counts = S.split('').count('.')

puts s_counts < d_counts ? s_counts : d_counts