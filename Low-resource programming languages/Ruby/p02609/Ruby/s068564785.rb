N = gets.to_i
s = gets.chomp
@hash = {}
def divop(n, cnt = 0)
    if n == 0
        return cnt
    else
        if @hash[n]
            return @hash[n] + cnt
        else
            i = n % n.to_s(2).count('1')
            c = divop(i, cnt + 1)
            @hash[n] = c - cnt
            return c
        end
    end
end
N.times do |n|
    org = s[n]
    s[n] = (org == '0' ? '1' : '0')
    puts divop(s.to_i(2))
    s[n] = org
end