n = gets.to_i
ps = gets.split.map(&:to_i)
qs = gets.split.map(&:to_i)

list = []
1.upto(n) do |i|
  list << i
end

p_cnt = 0
q_cnt = 0
list.permutation.each_with_index do |l, i|
  p_cnt = i+1 if ps == l
  q_cnt = i+1 if qs == l
end

puts (p_cnt-q_cnt).abs