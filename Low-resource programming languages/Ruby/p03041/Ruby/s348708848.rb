N, K = gets.chomp.split(/\s+/, 2).map(&:to_i)
S = gets.chomp
S[K+1] = {?A=>"a", ?B=>"b", ?C=>"c"}[S[K+1]]
puts S
