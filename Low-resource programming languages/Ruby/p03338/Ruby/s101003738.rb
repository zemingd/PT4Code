n = gets.to_i
s = gets.chomp

ans = 0
n.times do |i|
    u = s.chars.uniq
    f = s[0..i].chars.uniq
    l = s[i+1..-1].chars.uniq
    # p [f,l,u]
    t = f.size + l.size - u.size
    ans = t if ans < t
end

p ans