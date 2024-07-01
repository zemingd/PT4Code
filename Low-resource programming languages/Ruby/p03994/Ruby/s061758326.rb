def nx(chr)
    if chr == 'z'
        'a'
    else
        (chr.ord + 1).chr
    end
end


def dif(chr)
    if chr == 'a'
        0
    else
        ('z'.ord - chr.ord) + 1
    end
end

ans = ''
s = gets.chomp.chars
k = gets.to_i

s.each_with_index {|c, i|
    if i == s.size - 1
        d = c
        k %= 26
        while k > 0
            k -= 1
            d = nx(d)
        end
        ans += d
    elsif dif(c) <= k
        ans += 'a'
        k -= dif(c)
    else
        ans += c
    end
}

puts ans
