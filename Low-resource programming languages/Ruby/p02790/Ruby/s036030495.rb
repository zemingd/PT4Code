a,b = gets.split(' ').map(&:to_i)
if a < b
    print a.to_s * b
else
    print b.to_s * a
end