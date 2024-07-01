a,b=gets.split.map &:to_i
if a==2 then a=2
elsif (a<=7&&a%2==1)||(a>=8&&a%2==0) then a=0
else a=1 end
if b==2 then b=2
elsif (b<=7&&b%2==1)||(b>=8&&b%2==0) then b=0
else b=1 end
