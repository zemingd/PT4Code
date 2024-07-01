N,K= gets.chomp.split(' ').map(&:to_i)
S  = gets.chomp

S[K-1] = S[K-1].downcase
puts S