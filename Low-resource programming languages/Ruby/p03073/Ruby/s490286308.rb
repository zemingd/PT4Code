s = gets.chomp.split('')

p1 = []
p2 = []
pp1 = '0'
pp2 = '1'
s.size.times do
    p1.push(pp1)
    p2.push(pp2)

    if pp1 == '0'
        pp1 = '1'
        pp2 = '0'
    else
        pp1 = '0'
        pp2 = '1'
    end
end

res1 = 0
res2 = 0
s.size.times do |i|
    unless s[i] == p1[i]
        res1 += 1
    end
    unless s[i] == p2[i]
        res2 += 1
    end
end

puts res1 < res2 ? res1 : res2