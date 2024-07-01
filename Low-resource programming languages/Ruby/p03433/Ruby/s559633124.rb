n = gets.chomp.to_i
a = gets.chomp.to_i
if n % 500 - a <= 0
    print("Yes")
else
    print("No")
end