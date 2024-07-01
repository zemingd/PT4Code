n = gets.chomp.to_i
p_arr = gets.chomp.split(" ").map(&:to_i)

n_arr = []
(1..n).each do |i|
  n_arr << i
end

count = 0
p_arr.each_with_index do |p, i|
  count += 1 if p != n_arr[i]
end

if count == 0 || count == 2 then
  puts "YES"
else
  puts "NO"
end
