n = gets.chomp
arr = gets.chomp.split(' ').map(&:to_i)
best_count = 0
arr.each_with_index do |val, i|
  count = 0
  (i..arr.size-2).each do |j|
    break if j == arr.size
    break if arr[j] < arr[j+1]
    count = count + 1
  end
  best_count = count if best_count < count
end
puts best_count