A, B, C, D = gets.split.map(&:to_i)

def gcd(a, b)
  if a > b
    return a if b == 0

    gcd(b, a % b)
  else
    return b if a == 0

    gcd(a, b % a)
  end
end

def lcm(a, b)
  a * b / gcd(a, b)
end

num = (B - A + 1)

num_c = B/C - A/C
num_d = B/D - A/D

lcm = lcm(C, D)
num_lcm = B/lcm - A/lcm

# ip num_c, num_d, num_lcm

ans = num - num_c - num_d + num_lcm
puts ans
