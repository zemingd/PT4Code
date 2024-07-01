n, m = gets.split.map(&:to_i)
l_arr = []
r_arr = []
m.times do
  l, r = gets.split.map(&:to_i)
  l_arr << l
  r_arr << r
end

puts (r_arr.min - l_arr.max) + 1