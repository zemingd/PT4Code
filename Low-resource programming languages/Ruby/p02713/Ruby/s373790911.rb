K = gets.to_i
s = 0
(1 .. K).each{|a|
    (1 .. K).each{|b|
        ab = a.gcd(b)
        (1 .. K).each{|c|
            s += ab.gcd(c)
        }
    }
}
puts s
