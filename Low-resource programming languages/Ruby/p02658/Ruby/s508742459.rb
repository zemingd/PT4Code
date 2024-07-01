n = gets.to_i
numbers = gets.split('').map(&:to_i)
sum = 1
numbers.each do |num|
  if num == 0
    sum = 0
    break
  end
  sum *= num
  if sum > 10**18
    sum = -1
    break
  end
end
  
puts sum