k = gets.to_i

sum = 0
(1..k).each{|a|
    (1..k).each{|b|
        (1..k).each{|c|
            sum += a.gcd(b).gcd(c)
        }
    }
}
puts sum
