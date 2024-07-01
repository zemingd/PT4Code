def divop(n)
    cnt = 0
    i = n.to_i(2)
    while i > 0
        cnt += 1
        i = i % i.to_s(2).count('1')
    end
    return cnt
end
N = gets.to_i
s = gets.chomp
N.times do |n|
    org = s[n]
    s[n] = (org == '0' ? '1' : '0')
    puts divop(s)
    s[n] = org
end