N,K = gets.split(" ").map(&:to_i)
S = gets.split("")
S[K-1].downcase!
print S.join
