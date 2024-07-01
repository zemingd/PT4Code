n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
sum = 0
n.times do |i|
  sum += arr[i] - (1 + i)
end
avg = sum / n
abs = 0
n.times do |i|
  abs += (arr[i] - (1 + i) - avg).abs
end
puts abs