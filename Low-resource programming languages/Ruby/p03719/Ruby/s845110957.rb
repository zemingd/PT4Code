a = gets.chomp.split(" ").map(&:to_i)

if(a[2] >= a[0] && a[2] <= a[1])
    print("Yes")
else
    print("No")
end