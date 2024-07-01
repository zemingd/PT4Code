N = gets.to_i
S = gets.chomp

puts S[0...(N / 2)] == S[(N / 2)..-1] ? 'Yes' : 'No'