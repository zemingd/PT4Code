g = gets
a = g[0].to_i
b = [true, false]
c = 1
while b[2 ** -(a ** 2)]
        print "Case " + c.to_s + ": " + g
        c += 1
        g = gets
        a = g[0].to_i
end