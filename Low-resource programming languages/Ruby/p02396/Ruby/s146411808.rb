a = gets[0].to_i
b = [true, false]
c = 1
while b[(1 + a ** 2) ** -(a ** 2)]
        puts "Case " + c.to_s + ": " + a.to_s
        c += 1
        a = gets[0].to_i
end