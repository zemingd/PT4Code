n = gets.chomp.to_i
num_p = gets.chomp.tr(' ', '').to_i
num_q = gets.chomp.tr(' ', '').to_i

permutations = [*1..n].permutation(n).to_a.map{|a| a.join('').to_i}.sort

p_idx = permutations.index(num_p) + 1
q_idx = permutations.index(num_q) + 1

puts (p_idx - q_idx).abs