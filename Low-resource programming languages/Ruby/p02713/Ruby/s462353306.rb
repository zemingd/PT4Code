k = gets.to_i
ans = 0

(1..k).each{|c|
  (1..k).each{|b|
    (1..k).each{|a|
      ans += a.gcd(b).gcd(c)
    }
  }
}

puts("#{ans}")