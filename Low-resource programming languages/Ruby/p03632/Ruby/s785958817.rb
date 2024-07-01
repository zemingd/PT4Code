a, b, c, d = gets.chomp.split(' ').map(&:to_i)

if a >= d || c >= b
    puts(0) 
else
    s = a >= c ? a : c
    e = b <= d ? b : d
    puts(e - s)
end