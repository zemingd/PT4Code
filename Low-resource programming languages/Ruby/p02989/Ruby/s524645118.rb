n = gets.chomp.to_i
d_arr = gets.chomp.split.map(&:to_i)

d_arr.sort!

puts d_arr[n/2] - d_arr[n/2-1]