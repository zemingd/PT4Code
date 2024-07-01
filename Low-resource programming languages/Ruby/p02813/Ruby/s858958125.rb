N = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)

p_num = P.join.to_i
q_num = Q.join.to_i

nums = [*1..N].permutation(N).map { |list| list.join.to_i }.sort

r = nums.bsearch_index { |x| x >= p_num }
l = nums.bsearch_index { |x| x >= q_num }

puts (r - l).abs
