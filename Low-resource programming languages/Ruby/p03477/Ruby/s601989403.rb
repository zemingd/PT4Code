a,b,c,d=gets.split.map &:to_i
if a+b>c+d
  print("Left")
elsif a+b==c+d
  print("Balanced")
else
  print("Right")
end