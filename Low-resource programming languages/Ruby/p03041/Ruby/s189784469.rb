N, K = gets.split.map(&:to_i)
S = gets.chomp

puts S[0, K - 1] + S[K - 1].downcase + S[K .. -1]