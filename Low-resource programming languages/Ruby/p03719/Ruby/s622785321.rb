a,b,c=gets().chomp().split().map(&:to_i)

if a<c and b>c
    puts("Yes")
else
    puts("No")
end