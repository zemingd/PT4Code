a = gets.to_i
b = gets.split.map(&:to_i)

if a == 2
  p b.sort[1]
else
  a1 = b[0].gcd(b[1])
  a2 = b[0].gcd(b[2])
  a3 = b[1].gcd(b[2])

  d = [a1, a2, a3].sort!


  ar1 = []
  a.times do |i|
    ar1 << b[i].gcd(d[1])
  end

  ar2 = []
  a.times do |i|
    ar2 << b[i].gcd(d[2])
  end

  p [ar1.sort[1], ar2.sort[1]].sort[1]
end