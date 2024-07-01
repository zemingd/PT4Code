n = gets.to_i
s = gets.chomp.chars

ans = 0
k = s.uniq.size
n.times do |i|
    f = s[0..i].uniq
    l = s[i+1..-1].uniq
    t = f.size + l.size - k
    ans = t if ans < t
end

p ans