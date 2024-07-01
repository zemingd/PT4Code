n = gets.to_i
for i in 1..n do
  if i % 3 == 0 then
    print(" #{i}")
    next
  end
  
  x = i
  while x > 0 do
    if x % 10 == 3 then
      print(" #{i}")
      break
    end
    x /= 10
  end
end
puts

