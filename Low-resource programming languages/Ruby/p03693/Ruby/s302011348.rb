r,g,b = gets.split.map(&:to_i)

if (100*r)+(10*g)+b % 4 == 0
 puts("YES")
 else puts("NO")
end