N,K=gets.chomp.split.map(&:to_i)
S=gets.chomp.chars
S[K-1].downcase!
puts S.join