r,g,b = gets.split.map(&:to_i)
x = (100*r)+(10*g)+b
if  x%4 == 0
 puts("YES")
 else puts("NO")
end