N = gets.chomp.to_i
S = gets.chomp

s_counts = S.split("").count('#')
puts s_counts < N - s_counts ? s_counts : N - s_counts