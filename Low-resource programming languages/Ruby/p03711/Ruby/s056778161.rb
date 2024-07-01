$GroupA = [1,3,5,6,8,10,12]
$GroupB = [4,6,9,11]
 
str = STDIN.gets
ary = str.split(" ")
x = ary[0].to_i
y = ary[1].to_i
 
if(x == 2 || y == 2)
    puts "No"
elsif(($GroupA.include?(x) && $GroupA.include?(y)) || ($GroupB.include?(x) && $GroupB.include?(y)))
    puts "Yes"
else
    puts "No"
end