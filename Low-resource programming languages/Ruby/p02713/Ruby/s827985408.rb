n = gets.chomp.to_i

ans = (1..n).reduce(0) {|s, a|
  t = (1..n).reduce(0) {|t, b|
    g = a.gcd(b)
    u = (1..n).reduce(0) {|u, c|
      u + g.gcd(c)
    }
    t + u
  }
  s + t
}

puts ans