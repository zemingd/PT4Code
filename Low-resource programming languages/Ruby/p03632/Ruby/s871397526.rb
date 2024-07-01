a,b,c,d = gets.chomp.split.map(&:to_i)
a = c if a < c
b = d if b > d
if b - a >= 0 then
    print b - a 
else
    print 0
end