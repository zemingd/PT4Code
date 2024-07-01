a,b = gets.split(" ").map(&:to_i)
c = 0
2.times do
    if a >= b
        c += a
        a -= 1
    else
        c += b
        b -= 1
    end
end
print c