nm = gets.chomp.split(" ").map(&:to_i)

if nm[0] >= 0 && nm[1] >= 0
  if nm[0] <= nm[1]
    p nm[1] - nm[0]
  else
    p nm[0] - nm[1] + 2
  end
elsif nm[0] >= 0 && nm[1] < 0
  if nm[0] + nm[1] > 0
    p nm[0] - nm[1] + 1 
  else
    p -nm[1] - nm[0]  + 1 
  end
elsif nm[0] < 0 && nm[1] >= 0
  #p nm[1] - nm[0]
  if nm[0] + nm[1] > 0
    p nm[1] - nm[0] + 1 
  else
    p -nm[0] - nm[1]  + 1 
  end
else
  if nm[0] <= nm[1]
    p nm[1] - nm[0]
  else
    p nm[0] - nm[1] + 2
  end
end
