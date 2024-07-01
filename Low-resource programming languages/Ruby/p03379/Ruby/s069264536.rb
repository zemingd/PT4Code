N = gets.chomp.to_i
nums = gets.chomp.split(' ').map(&:to_i)
sorted = nums.sort
deleted = {}
for i in 1..N do
  a = sorted.clone
  delete = nums[i - 1]
  if deleted.has_key? delete
    puts deleted[delete]
    break
  end
  a.each_with_index do |val, index|
    if val == delete
      a.delete_at index
      break
    end
  end
  deleted[delete.to_s] = a[(a.count + 1)/2 - 1]
  puts a[(a.count + 1)/2 - 1]
end
