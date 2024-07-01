N = gets.chomp.to_i
nums = gets.chomp.split(' ').map(&:to_i)
sorted = nums.sort!
for i in 1..N do
  a = sorted.clone
  delete = nums[i - 1]
  a.each { |index, val|
    if val == delete
      a.delete_at index
      break
    end
  }
  a.sort!
  puts a[(a.count + 1)/2 - 1]
end
