n, m = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

arr_sum = arr.sum

filtered = arr.select { |a| a >= arr_sum.to_f / (4 * m) }

if filtered.count >= m
  puts "Yes"
else
  puts "No"
end
