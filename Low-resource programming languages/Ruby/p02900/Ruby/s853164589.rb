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
if a > b
  z = a
  a = b
  b = z
end

pr = []
ans = 1

Prime.each(Math.sqrt(a).to_i).each do |e|
  d = gcd(e,a)
  if d == e
    pr << e
  end
end

Prime.each(Math.sqrt(b).to_i).each do |e|
  d = gcd(e,b)
  if d == e
    if pr.include?(e)
      pr.delete(e)
      ans += 1
    end
  end
end

p ans