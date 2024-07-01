n = gets.chomp.to_i
num_p = gets.chomp.split.join
num_q = gets.chomp.split.join
 
dict = [*(1..n)].permutation.map(&:join)
 
puts (dict.index(num_p) - dict.index(num_q)).abs