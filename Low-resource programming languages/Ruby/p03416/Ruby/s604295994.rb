a, b = gets.split.map(&:to_i)
ans = 0
a.upto(b){|i|
  s = i.to_s
  ans += 1 if s == s.reverse
}
p ans