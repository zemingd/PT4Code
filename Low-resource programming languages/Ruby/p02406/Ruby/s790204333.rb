n = STDIN.gets.to_i
i = 1
check1 = true
check2 = true
check3 = true

while true do
  x = i
  if x % 3 == 0 && check1  then
    print " " + i.to_s
    check2 = false
    check3 = false
  end
  
  if x % 10 == 3 && check2 then
    print " " + i.to_s
    check3 = false
  end

  if check3 then
    while true do
      x /= 10
      if x > 0 then
        if x % 10 == 3
          print " " + i.to_s
        end
      else
        break
      end
    end
  end
  
  i += 1
  if i > n
    break
  end

  check1 = true
  check2 = true
  check3 = true
end
print "\n"