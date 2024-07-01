n,l = gets.chomp.split(" ").map(&:to_i)

arr = []
(1..n).each do |i|
  arr << l + i - 1
end

sum = arr.inject(:+)

min = 1000000000
result = nil
(1..n).each do |i|
  copy_arr = arr.dup
  copy_arr.delete_at(i-1)
  sum2 = copy_arr.inject(:+)
  diff = (sum2 - sum).abs
  if diff < min then
    min = diff
    result = sum2
  end
end

puts result
