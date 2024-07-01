s = gets.chomp
Q = gets.chomp.to_i
r = Array.new(0)
r.push("")
r.push("")
x = 0
for i in 1..Q do
    str = gets.split
    if str[0] == "1"
        x += 1
        x %= 2
    else
        if str[1] == "1"
            y = (x+1)%2
            r[y] << str[2]
        else
            r[x] << str[2]
        end
    end
end
if x % 2 == 0
    s << r[0]
    s.reverse!
    s << r[1]
    s.reverse!
else
    s << r[0]
    s.reverse!
    s << r[1]
end
puts s