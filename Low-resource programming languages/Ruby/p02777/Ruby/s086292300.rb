s,t = gets.chomp
a,b = gets.split.map(&:to_i)
x = gets.chomp
if x==s
    a -=1
else 
    b -=1
end
print a
print b