a = gets.split().map(&:to_i)
if (a[0] < a[1] and a[1] < a[2])
    printf("Yes\n")
else
    printf("No\n")
end