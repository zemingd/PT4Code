require 'prime'

def gcd(a,b)
  if a < b
    z = a
    a = b
    b = z
  end
  r = a % b
  while r != 0
    a = b
    b = r
    r = a % b
  end
  b
end

a,b = gets.chomp.split(" ").map(&:to_i)
c = gcd(a,b)

if a > b
  z = a
  a = b
  b = z
end

pr = []
prime = Prime.each(c).to_a
prime.each do |e|
  if e * e > c
    break
  end
  while c % e == 0
    pr << e
    c = c / e
  end
end
if c > 1
  pr << c
end

#p pr
p (pr.uniq.count+1)