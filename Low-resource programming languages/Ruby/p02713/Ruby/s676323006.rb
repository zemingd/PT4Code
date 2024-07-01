N = gets.to_i

ans = 0
(1..N).each{|a|
  (1..N).each{|b|
    (1..N).each{|c|
      ans += a.gcd(b).gcd(c)
    }
  }
}
p ans