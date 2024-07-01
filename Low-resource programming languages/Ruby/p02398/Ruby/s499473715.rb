a,b,c=gets.chomp.split(" ").map(&:to_i);
i=a
count=0
while(i<=b)
 if(c%i==0)
  count=count+1
 end
i=i+1
end
print"#{count}\n"
