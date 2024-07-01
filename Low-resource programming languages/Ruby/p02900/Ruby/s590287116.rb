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

ans = 1

Prime.each(Math.sqrt(c).to_i+1).each do |e|
  d = gcd(e,c)
  if d == e
    ans += 1
  end
end

p ans
