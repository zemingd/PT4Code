N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

wk = A.inject(0){|r, a|
  r + (Math.log(a) / Math.log(2)).floor
}
avr = ((wk - M) / N.to_f).ceil
avr = 0 if avr < 0
lmt = 1 << avr
m_t = M
A.map!{|a|
  m = a > lmt ? (Math.log(a / lmt) / Math.log(2)).floor : 0
  m_t -= m
  a / (1 << m)
}
m_t.times{
  A.sort!
  A[-1] /= 2
}

puts A.inject(&:+)
