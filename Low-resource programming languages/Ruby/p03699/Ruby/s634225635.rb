n = gets.to_i

s = 0
l = []

n.times do
    x = gets.to_i
    if x%10 != 0
        l.append(x)
    end
    s += x
end


l.sort!

if l.empty?
    puts 0
else
    if s % 10 == 0
        puts s-l[0]
    else
        puts s
    end
end