n = gets.to_i
arr = gets.strip.split.map(&:to_i)

a_sum = 0
b_sum = 0

arr.sort.reverse.each_with_index do |num, i|
    i += 1
    i.odd? ? a_sum += num : b_sum += num
end

puts a_sum - b_sum