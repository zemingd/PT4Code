n, m = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

total = arr.sum
if arr.select { |a| a >= total / (4 * m) }.count >= m
    puts "Yes"
else
    puts "No"
end