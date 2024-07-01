n = gets.to_i
arr = gets.chomp.split(" ").map(&:to_i)
num_times_arr = Array.new(n,0)
arr.each do |i|
  num_times_arr[i - 1] += 1
end
sum = 0
num_times_arr.each do |i|
  sum += i * (i - 1) / 2
end
arr.each do |i|
  puts sum - num_times_arr[i - 1] + 1
end