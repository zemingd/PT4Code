def seiseki(a,b,c)
 if(a==-1||b==-1)
  return "F"
 elsif(a+b>=80)
  return "A"
 elsif(a+b>=65)
  return "B"
 elsif(a+b>=50)
  return "C"
 elsif(a+b>=30)
  if(c>=50)
   return "C"
  else
   return "D"
  end
 else
  return "F"
 end
end
while(1)
a,b,c=gets.chomp.split(" ").map(&:to_i);
if(a==-1&&b==-1&&c==-1)
 break
end
print("#{seiseki(a,b,c)}\n")
end

