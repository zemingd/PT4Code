n = gets.to_i
for i in 1..n
  x = i
  if x % 3 == 0
    print " #{i}"
  elsif x % 10 == 3
    print " #{i}"
  else
    x /= 10
    if x % 10 == 3
      print " #{i}"
    end
  end
end
puts