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

b = gcd(a,b)

n = b
ans = 1

Prime.each(10000).each do |e|
  d = gcd(e,n)
  if d == 1
    next
  elsif d < n
    ans += 1
  elsif d == n
    next
  else
    break
  end
end

p ans