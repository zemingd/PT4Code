n, m = gets.chomp.split(" ").map{ |s| s.to_i }
x_arr = []
m.times do |index|
  x_arr << gets.to_i
end
x_arr.sort
bias = []
(m-1).times do |index|
  bias << x_arr[index+1] - x_arr[index]
end
bias.sort
result = 0
n.times do |index|
  result += bias[index]
end
p result
