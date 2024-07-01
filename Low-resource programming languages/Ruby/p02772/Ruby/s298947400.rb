len = gets.to_i
nums = gets.split(' ')
result = true

len.times do |n|
  num = nums[n].to_i
  if num.even?
    unless num % 3 == 0 || num % 5 == 0
      result = false
    end
  end
end

if result
  puts "APPROVED"
else
  puts "DENIED"
end