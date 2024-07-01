input_num = gets.to_i
nums = gets.split(' ').map { |num| num.to_i if num.to_i.even?  }.compact

if nums.empty?
  puts 'DENIED'
  return
end

if nums.all? { |num| num % 3 == 0 || num % 5 == 0 }
  puts 'APPROVED'
else
  puts 'DENIED'
end
