i=1
while(1)
 x,y=gets.chomp.split(" ").map(&:to_i);
 if(x==0&&y==0)
  break
 end
 print"#{[x,y].min} #{[x,y].max}\n"
 i=i+1
end
