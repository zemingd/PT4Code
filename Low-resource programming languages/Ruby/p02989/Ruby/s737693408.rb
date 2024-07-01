n = gets.to_i
d = gets.split(' ').map(&:to_i)

d_sorted = d.sort

d_sorted_lh_max = d_sorted[n / 2 - 1]
d_sorted_rh_min = d_sorted[n / 2 ]

ans = d_sorted_rh_min - d_sorted_lh_max

puts ans
