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

pr = []
prime = Prime.each(Math.sqrt(c).to_i+1).to_a
prime.each do |e|
  d = c
  while d % e == 0
    pr << e
    d = d / e
  end
  if d == c
    next
  elsif d > 1
    pr << d
  end
end

#p pr
#p prime
#p (pr.uniq & prime)
p ((pr.uniq & prime).count+1)