n = gets.to_i
ws = gets.split(" ").map(&:to_i)
full = ws.inject(:+)
half = full / 2
s1 = 0
ws.each do |w|
    s1 += w
    if s1 >= half
        s1 - w if (s1 - half).abs > (s1 - w - half).abs
        break
    end
end
print 2 * s1 - full