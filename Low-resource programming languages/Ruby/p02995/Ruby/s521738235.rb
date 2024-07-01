a, b, c, d = gets.strip.split(" ").map(&:to_i)

coff = (a / c.to_f).ceil * c
cc = 
  if b - coff >= 0
    (b - coff) / c + 1
  else
    0
  end

doff = (a / d.to_f).ceil * d
dc = 
  if b - doff >= 0
    (b - doff) / d + 1
  else
    0
  end

x = c * d / c.gcd(d)
xoff = (a / x.to_f).ceil * x
xc = 
  if b - xoff >= 0
    (b - xoff) / x + 1
  else
    0
  end

xc = 0 if c.gcd(d) == 1

puts (b - a) + 1 - (cc + dc - xc)
