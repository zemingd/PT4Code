h,a=gets.chomp.split(" ").map(&:to_i);
c=0
while(1)
  c+=1
  h-=a
  if h<=0
  	p c
    exit
  end
  
end