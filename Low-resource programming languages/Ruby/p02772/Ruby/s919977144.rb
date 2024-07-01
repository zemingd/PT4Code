n = gets.to_i
nums = gets.split(' ').map(&:to_i)

result = 'APPROVED'
nums.each do |n|
  if n.even?
    result = 'DENIED' unless n % 3 == 0 || n % 5 == 0
  end
  next if result == 'DENIED'
end

puts result
