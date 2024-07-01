a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
 
 
(a + 1).times do |i|
  d = x - (500 * i)
  if d < 0
    break
  end
  
  (b + 1).times do |j|
    e = d - (100 * j)
    if e < 0
      break
    end
    
    if (e / 50) <= c 
      count += 1
    end
  end
end
 
puts count