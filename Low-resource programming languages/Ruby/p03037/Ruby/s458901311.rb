n, m = gets.split.map(&:to_i)
l_arr = []
r_arr = []
m.times do
  l, r = gets.split.map(&:to_i)
  l_arr << l
  r_arr << r
end

if r_arr.min == l_arr.max
  puts 1
elsif r_arr.min < l_arr.max
  puts (r_arr.min - l_arr.max) + 1
else
  puts 0
end
