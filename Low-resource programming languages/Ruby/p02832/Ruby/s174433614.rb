n = gets.to_i
nums = gets.split.map(&:to_i)
count = 0

flag = false
while !flag do
  before = nums.dup
  d_count = 0
  l = nums.length
  nums.delete_if.with_index do |num, i|
    #puts num
    #puts i
    if num > (i + 1 - d_count) || num == nums[i-1-d_count]
      #puts l-1
      if i == l-1 && num == 1
        false
      else
        d_count += 1
        count += 1
        true
      end
    else
      false
    end
  end
  if nums == before
    flag = true
  end
  #print nums
end
#print nums

if nums.size == 0
  puts -1
else
  puts count
end