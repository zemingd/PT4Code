a,b,c = gets.split.map(&:to_i)

if (Math.sqrt(a).to_f + Math.sqrt(b).to_f).to_f < Math.sqrt(c).to_f then
    #puts("Yes") 
else
    puts("No")
end