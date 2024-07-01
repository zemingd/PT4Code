N,K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

puts (H.sort[0, N-K] || []).inject(:+) || 0
