ar = gets.chomp.split(" ").map{|i|i = i.to_i}
a=ar[0]
b=ar[1]
c=ar[2]
if b/a > c then puts c
else puts b/a
end