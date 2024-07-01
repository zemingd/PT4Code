N = gets.to_i
S = gets.strip

puts (N.even? && S[0, N/2] == S[N/2 .. -1])? 'Yes' : 'No'