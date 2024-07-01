N, K = gets.split(' ').map(&:to_i)
S = gets.chomp
i = 0
puts S.insert(K-1, S.slice!(K-1, 1).downcase)