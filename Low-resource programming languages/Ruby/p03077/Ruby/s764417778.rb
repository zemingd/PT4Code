n = gets.chomp.to_i
a=[]
a.push(gets.chomp.to_i)
a.push(gets.chomp.to_i)
a.push(gets.chomp.to_i)
a.push(gets.chomp.to_i)
a.push(gets.chomp.to_i)

min = a.min
#puts min

if n%min==0
    puts n/min+4
else
    puts n/min+5
end