X, Y = gets.split(' ').map{|n| n.to_i} 
range = [*X..Y]
counter = 0
range.each |j| do
  a = j.to_s
  if a == .reverse
    counter += 1
  end
end

puts #{counter}
