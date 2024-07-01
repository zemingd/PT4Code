a = gets.to_i
b = gets.split.map(&:to_i)

if a == 2
  p b.sort[1]
else
  a1 = b[0].gcd(b[1])
  a2 = b[0].gcd(b[2])
  a3 = b[1].gcd(b[2])


  ar1 = []
  a.times do |i|
    ar1 << b[i].gcd(a1)
  end

  ar2 = []
  a.times do |i|
    ar2 << b[i].gcd(a2)
  end

  ar3 = []
  a.times do |i|
    ar3 << b[i].gcd(a3)
  end

  p [ar1.sort[1], ar2.sort[1], ar3.sort[1]].sort[2]
end