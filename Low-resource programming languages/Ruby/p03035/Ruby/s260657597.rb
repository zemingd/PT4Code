a, b = gets.split(' ')
a = a.to_i
b = b.to_i

if a >= 13 then
    print b
elsif a <= 12 && a >= 6 then
    print b/2
else
    print 0
end