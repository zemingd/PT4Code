N = gets.to_i
p (0...N).reduce(1) { |a,_|
  b = gets.to_i
  a*b/a.gcd(b)
}