n = gets.to_i
 
1.upto(n) do |i|
  x = i
  if (x % 3 == 0)
    print " #{i}"
 
    next
  end
 
  while x > 0
    if x % 10 == 3
      print " #{i}"
      break
    end
    x /= 10
  end
end
puts