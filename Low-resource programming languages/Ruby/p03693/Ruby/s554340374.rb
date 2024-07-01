r,g,b=gets().chomp().split().map(&:to_i)

if (r*100+g*10+b)%4==0
    puts("YES")
else
    puts("NO")
end