str = gets.split
a,b = str[0].to_i, str[1].to_i
small,big = 0,0
if a < b
    small = a
    big = b
else
    small = b
    big = a
end
for i in 1..big do
    print small
end
puts