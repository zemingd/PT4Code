n=gets.to_i
for x in 1..n do
    y=x
    if y%3==0 then
        printf(" %d",y)
        next
    end
    while true
       if y%10==3 then
          printf(" %d",x)
          break;
       end
       y/=10
       if y == 0 then
          break
       end
    end
end
print "\n"