a = gets.split(' ').map(&:to_i)
if a[0] > a[2]
    puts("NO")
elsif (a[0] + a[1]-1)> a[2]
    puts("YES")
else
    puts("NO")
end

