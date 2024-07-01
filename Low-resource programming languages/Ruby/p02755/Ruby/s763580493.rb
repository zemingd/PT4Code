A,B=gets.split.map(&:to_i)

a1=(A*(100.0/8)).ceil
a2=((A+1)*(100.0/8)).floor
b1=B*10
b2=(B+1)*10

if a1>b2 || b1>a2
  puts -1
elsif a1>=b1 && a1<b2
  puts a1
else
  puts b1
end
