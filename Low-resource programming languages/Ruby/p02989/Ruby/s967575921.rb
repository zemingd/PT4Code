N = gets.to_i
arr = gets.split.map(&:to_i).sort
t_arr = arr.each_slice(arr.count/2).to_a
if t_arr[0].count != t_arr[1].count
  puts 0
else
  puts [*(t_arr[0].last)..(t_arr[1].first)].count - 1
end