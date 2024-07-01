n = gets.to_i
t, a = gets.chomp.split(' ').map(&:to_i)
h_arr = gets.chomp.split(' ').map(&:to_i)

temp_arr = h_arr.map{|x|
  (a - (t - x * 0.006)).abs
}
puts temp_arr.index(temp_arr.min)+1