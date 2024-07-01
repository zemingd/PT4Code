n = gets.chomp.to_i
p = gets.chomp.split(' ').map(&:to_i)
q = gets.chomp.split(' ').map(&:to_i)
p_num = 0
q_num = 0

[*1..n].permutation(n).to_a.each.with_index(1) do |arr, i|
  p_num = i if p==arr
  q_num = i if q==arr
end

print((p_num - q_num).abs)
