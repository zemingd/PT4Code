i = gets.chomp.split(" ")
j = gets.chomp.split(" ")
t = gets.chomp.to_i
a=i[0].to_i
v=i[1].to_f
b=j[0].to_i
w=j[1].to_f

d = b-a
dv = v-w

tt = d/dv
if(t>=tt && tt>=0)
    puts "YES"
else
    puts "NO"
end