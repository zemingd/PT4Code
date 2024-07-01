s = gets.chomp.chars
k = gets.to_i
d = s.each_index.inject(k) do |m, i|
    r = ('z'.ord - s[i].ord + 1) % 26
    if r <= m
        s[i] = 'a'
        m - r
    else
        m
    end
end
if d > 0
    s[-1] = ('a'.ord + (s[-1].ord - 'a'.ord + d) % 26).chr
end
puts s.join
