W,H,x,y,r=gets.chomp.split(" ").map(&:to_i)
if(0<=x-r&&x+r<=W&&0<=y-r&&y+r<=H)
 print"Yes\n"
else
 print"No\n"
end
