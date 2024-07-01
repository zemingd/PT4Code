n,m = gets.split.map!(&:to_i)
a = gets.split.map!(&:to_i).sort!.reverse

s = [a.shift / 2]
(m-1).times do 
    if a == []
        a = s
        s = [a.shift / 2]
    elsif a[0] > s[0]
        s << a.shift / 2
    else
        s << s.shift / 2
    end
end

ans = 0
a += s
a.each do |e|
    ans += e
end

puts ans