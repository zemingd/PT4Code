require 'pp'

x, n = gets.split.map(&:to_i)
p_n = gets.split.map(&:to_i)
t = []
102.times do |i|
    t << 0
end

p_n.each do |i|
    t[i] = 1
end

#pp t

ans1 = 99999
i = 0
while x - i >= 0
    if t[x - i] == 0
        ans1 = x - i
        break
    end
    i += 1
end

tmp = i

ans2 = -1
i = 0
while x + i >= 0
    if t[x + i] == 0
        ans2 = x + i
        break
    end
    i += 1
end

if tmp <= i
    puts ans1
else
    puts ans2
end
