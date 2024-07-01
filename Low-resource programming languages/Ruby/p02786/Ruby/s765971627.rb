# H

h = gets.chomp.to_i

C = {}

def cul(x)
  if x == 1
    return 1
  end

  if n = C[x]
    return n
  end

  r = cul(x / 2)
  s = r + r + 1

  C[x] = s

  return s
end

puts(cul(h))
