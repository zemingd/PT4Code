a,b,c = gets.split.map(&:to_f)

if (Math.sqrt(a) + Math.sqrt(b))/Math.sqrt(c).to_f < 1 then
    puts("Yes") 
else
    puts("No")
end