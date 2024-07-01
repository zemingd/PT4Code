s = gets
hoge = 0
c = 0
loop do 
    if !(s.include?("10")) and !(s.include?("01")) or s.empty? then
        break 
    end
    if s[hoge] == "1" and s[hoge + 1] == "0" then
        s.slice!(hoge..hoge + 1)
        c += 2
    elsif s[hoge] == "0" and s[hoge + 1] == "1" then
        s.slice!(hoge..hoge + 1)
        c += 2
    end
    hoge += 1
    if hoge == s.length then
        hoge = 0
    end
end
puts c
