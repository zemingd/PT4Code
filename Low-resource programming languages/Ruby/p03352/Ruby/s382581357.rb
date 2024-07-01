x = gets.to_i
tr = 0
for b in 1..x+1
  for p in 2..x+2
    a = b**p
    if a <= x then
      if tr <= a then
        tr = a
      end
    else
      break
    end
  end
end
print "#{tr}"
