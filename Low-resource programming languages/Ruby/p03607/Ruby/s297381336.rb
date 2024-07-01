n = gets.to_i
numbers = []
 
n.times do
	a = gets
  if numbers.include?(a)
    numbers.delete(a)
  else
    numbers.push(a)
  end
end
 
puts numbers.size