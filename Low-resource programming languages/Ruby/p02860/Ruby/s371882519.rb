N = gets.strip.to_i
S = gets.strip
front_index = N/2 - 1
back_index = N.even? ? N/2 : N/2 + 1
puts S[0..front_index] == S[back_index..-1] ? 'Yes' : 'No'