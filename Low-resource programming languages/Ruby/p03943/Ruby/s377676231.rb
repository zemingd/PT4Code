x=gets
x=x.split(" ")
a=x[0].to_i
b=x[1].to_i
c=x[2].to_i
m=[a,b,c].max
if (a+b+c-m)==m
    puts "Yes"
else
    puts "No"
end
