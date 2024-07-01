N, K = gets.split.map(&:to_i)
Ds = readlines.map(&:to_i)

puts ([*0 .. 9] - Ds).repeated_permutation(N.to_s.length).map{|a| a.join.to_i}.sort.bsearch{|x| x >= N}