a,b,c,d = gets.split.map(&:to_i)
while (a > 0 && c > 0)
    c -= b
    a -= d
end
puts (c <= 0 ? "Yes" : "No")