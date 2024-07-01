A, B, C = gets.split.map(&:to_i)
K = gets.to_i
ary = [A, B, C]
max = ary.max
max_i = ary.index(max)
ary.delete_at(max_i)
ans = max * (2 ** K) + ary.reduce(:+)
puts ans
