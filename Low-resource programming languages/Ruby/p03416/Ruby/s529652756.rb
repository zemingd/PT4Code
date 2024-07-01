X, Y = gets.split(' ').map{|n| n.to_i} 
range = X..Y
counter = 0
range.each |j| do
  if j.to_s == j.to_s.reverse
    counter += 1
end

puts #{counter}
