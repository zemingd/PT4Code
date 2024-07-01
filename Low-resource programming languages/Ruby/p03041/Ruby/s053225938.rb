

N,K = gets.chomp.split(" ").map(&:to_i)
S = gets.chomp.to_s
S[K-1] = S[K-1].downcase!
puts S