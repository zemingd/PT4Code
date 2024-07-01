input_num = gets.to_i
nums = gets.split(' ').map { |num| num.to_i }

flag = false

input_num.times do |i|
  if nums[i].even? 
    if nums[i] % 3 == 0 || nums[i] % 5 == 0
      flag = true
    else
      flag = false
      break
    end
  end
end

if flag
  puts 'APPROVED'
else
  puts 'DENIED'
end
