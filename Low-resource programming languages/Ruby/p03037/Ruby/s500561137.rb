n, m = gets.split.map(&:to_i)
s_l, s_r = gets.split.map(&:to_i)
arr = (s_l..s_r).to_a
(m-1).times do
  l, r = gets.split.map(&:to_i)
  arr = (l..r).to_a & arr
end
puts arr.size