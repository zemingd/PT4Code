s = gets.chomp
n = s.size
s << s
t = gets.chomp

a = b = 0
t.each_char do |c|
    if x = s.index(c, b)
        a += x - b + 1
        b = x >= n ? x - n + 1 : x + 1
    else
        a = -1
        break
    end
end

p a