x,y,z = gets.split

a = x.to_i
b = y.to_i
c = z.to_i

if a > b
    d = a   #aは3 bは8 dは3
    a = b   #aは8 bは8 dは3
    b = d   #aは8 bは3 dは3
end

if b > c
    d = b
    b = c
    c = d
end

if a > b
    d = a
    a = b
    b = d
end

print "#{a} #{b} #{c}\n"
