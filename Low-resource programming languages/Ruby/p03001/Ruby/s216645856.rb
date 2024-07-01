w,h,x,y = gets.split.map(&:to_i)
menseki = w*h/2
if w/2==x && h/2==y
  print(menseki,' ',1,"\n")
else
  print(menseki,' ',0,"\n")
end
