X, Y = gets.split(' ').map{|n| n.to_i} 
array = [*X..Y]
counter = 0
array.each do |number|
  a = number.to_s
  if a == a.reverse
    counter += 1
  end
end
 
puts #{counter}