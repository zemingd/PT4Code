x = gets.to_i
tr = 0
for b in 1..x
  for p in 2..x+1
    a = b**p
    if a <= x
      tr = a
    else
      break
    end
  end
end
print "#{tr}"