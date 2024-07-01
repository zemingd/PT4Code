n = gets.chomp.to_i
nums = []
for i in 0..n-1
  flag = 0 #0なら紙にない
  say = gets.chomp.to_i
  for j in 0..(nums.length)
    if(nums[j]==say)
      nums.delete_at(j)
      flag = 1
    end
  end
  if(flag==0)
    nums.push(say)
  end
end
puts nums.length