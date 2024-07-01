K = gets.to_i

ans = 0
(1..K).each{|a|
  (1..K).each{|b|
    (1..K).each{|c|
      ans += a.gcd(b).gcd(c)
    }
  }
}

puts ans
