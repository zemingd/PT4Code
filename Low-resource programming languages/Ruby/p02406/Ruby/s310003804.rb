n = gets.to_i
for i in 1..n
  if i % 3 == 0
    print " #{i}"
  else
    x = i
    x /= 10
    if x % 10 == 3
      print " #{i}"
    end
  end
end