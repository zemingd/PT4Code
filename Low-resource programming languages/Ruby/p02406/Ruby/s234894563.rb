n = gets.to_i
for i in 1..n
  x = i
  if x % 3 == 0
    print " #{i}"
  else
    while x > 0
      if x % 10 == 3
        print " #{i}"
        break
      end
      x /= 10
    end
  end
end
puts