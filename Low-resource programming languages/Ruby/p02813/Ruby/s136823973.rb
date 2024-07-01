n = gets.to_i
dic = (1..n).to_a.permutation(n).to_a
p_index = dic.index(gets.split.map(&:to_i)) + 1
q_index = dic.index(gets.split.map(&:to_i)) + 1

puts (p_index - q_index).abs
