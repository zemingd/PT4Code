n = gets.to_i
joshi_list = gets.split(' ').map(&:to_i)
arr = Array.new(n,0)
joshi_list.each do |joshi|
  arr[joshi - 1] += 1
end
arr.each do |ele|
  puts ele
end