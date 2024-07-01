def gcd(x, y)
  if y == 0
     x
  else
     gcd(y, x % y)
  end
end
a,b,c = gets.split.map(&:to_i)
g = gcd(a,b)
puts (c % g == 0 ? :YES : :NO)