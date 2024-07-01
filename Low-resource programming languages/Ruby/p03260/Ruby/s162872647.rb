a = gets.split().map(&:to_i)
if a[0] % 2 == 0 or a[1] % 2 == 0
    print("No")
else
    print("Yes")
end