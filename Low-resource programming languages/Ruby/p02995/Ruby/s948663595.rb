A, B, C, D = gets.chomp.split.map(&:to_i)

def lcm(a, b)
  a * b / gcd(a, b)
end
def gcd(a, b)
  a, b = b, a if a < b
  return a if b == 0
  _mod = a.modulo(b)
  if _mod == 0
    b
  else
    gcd(b, _mod)
  end
end

lcm_memo = lcm(C, D)

count_to_b = (B/C) + (B/D) - (B/lcm_memo)
count_to_a = ((A-1)/C) + ((A-1)/D) - ((A-1)/lcm_memo)
puts (B - A + 1)-(count_to_b - count_to_a)