n, a, b = gets.split(' ').map(&:to_i)

if b < a*n then
    print b
else
    print
    print a*n
end