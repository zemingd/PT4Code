N = gets.to_i
d_list = gets.split.map(&:to_i).sort
l = N / 2 - 1
r = N / 2
lv = d_list[l]
rv = d_list[r]
ans = rv - lv
puts ans
