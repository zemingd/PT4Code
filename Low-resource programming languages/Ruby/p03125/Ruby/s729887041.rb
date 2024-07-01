a = gets.split(" ").map(&:to_i)
if a[1] % a[0] == 0
    puts a[0] + a[1]
else
    puts a[1] - a[0]
end