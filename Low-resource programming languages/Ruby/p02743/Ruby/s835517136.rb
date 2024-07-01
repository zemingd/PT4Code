a,b,c = gets.split.map(&:to_f)
d = c-a-b 
if d > 0 && d*d > 4*a*b then
    puts("Yes") 
else
    puts("No")
end
