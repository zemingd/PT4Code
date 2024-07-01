n = gets.chomp.to_i
i = 1

while i <= n
  x = i
  if x % 3 == 0
    print " #{i}"
  elsif x % 10 == 3
    print " #{i}"
  end
    
  x /= 10
  if x % 10 == 3
    print " #{i}"
  end
  i += 1
end
puts