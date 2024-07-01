N = gets.to_i
res = N

(0..N).each{|i|
    c, t = 0, i
    
    while t > 0 do
        c += t%6
        t /= 6
    end
    
    t = N-i
    
    while t > 0 do
        c += t%9
        t /= 9
    end
    
    res = c if res > c
}

p res