N = gets.to_i
S = gets.chomp
puts (1 ... N).count{|i| S[i-1] != S[i] } + 1
