a,b,c = gets.split.map(&:to_s)

if a == b && b != c then
    puts("Yes")
elsif a == c && b != a then
    puts("Yes")
elsif b == c && b != a then
    puts("Yes")
else  
    puts("No")
end
