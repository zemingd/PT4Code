n = gets.to_i
ps = gets.split(' ').map(&:to_i)
qs = gets.split(' ').map(&:to_i)

ans_1 = 0
ans_2 = 0
[*1..n].permutation(n).each.with_index(1) do |a, i|
  ans_1 = i if ps == a
  ans_2 = i if qs == a
end

puts (ans_1 - ans_2).abs