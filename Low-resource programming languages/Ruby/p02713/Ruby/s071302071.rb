K = gets.to_i
p (1..K).reduce(0){ |s,a|
  s + (1..K).reduce(0){ |t,b|
    g = a.gcd(b)
    t + (1..K).reduce(0){ |u,c| u + g.gcd(c) }
  }
}