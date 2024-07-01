size = gets
nums = gets.split(' ').map(&:to_i).group_by{ |n| n%2 }[0]
check = 'APPROVED'
nums.each do |num|
  if num % 3 != 0 && num % 5 != 0
    check = 'DENIED'
  end
end
puts check