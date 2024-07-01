a,b = gets.split
s = (a+b).to_i
sqrt = Math.sqrt(s).to_i
if sqrt*sqrt == s
    puts "Yes"
else
    puts "No"
end