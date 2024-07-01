n = gets.to_i
as = gets.split('').map(&:to_i)
sum = 1
as.each do |a|
  if a == 0
    sum = 0
    break
  end
  sum *= a
  if sum > 10**18
    sum = -1
    break
  end
end
  
puts sum