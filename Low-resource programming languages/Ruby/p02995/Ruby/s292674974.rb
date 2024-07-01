def c131
    a, b, c, d = gets.chomp.split(/\s/).map{|x| x.to_i}
    l = c.lcm(d) # 最小公倍数

    e = b/c - a/c + (a%c==0?1:0)
    f = b/d - a/d + (a%d==0?1:0)
    g = b/l - a/l + (a%l==0?1:0)
    puts ((b-a)+1) - (e + f - g)
end

c131