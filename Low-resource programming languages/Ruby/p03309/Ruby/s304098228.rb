n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
sum = 0
n.times do |i|
  sum += arr[i] - (1 + i)
end
avg = sum / n
abs1 = 0
abs2 = 0
abs3 = 0
n.times do |i|
  abs1 += (arr[i] - (1 + i) - avg).abs
  abs2 += (arr[i] - (1 + i) - (avg + 1)).abs
  abs3 += (arr[i] - (1 + i) - (avg - 1)).abs
end
puts [abs1, abs2, abs3].min