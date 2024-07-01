array=gets.chomp.split(" ").map(&:to_i)
a=array[0]
b=array[1]
c=array[2]
d=array[3]
count=0
for i in a..b do
 if i%c!=0&&i%d!=0
 count=count+1
 end
end
puts count