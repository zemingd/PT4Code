n = gets.to_i
for i in 1..n
  if i % 3 == 0
    print " #{i}"
  else
    if i % 10 == 3
      print " #{i}"
    end
  end
end