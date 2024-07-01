A, B, C, D = gets.chomp.split.map(&:to_i)

# we calculate the numbers which can dividable by C, D, C*D

# (0, 3) -> 0
# (2, 3) -> 0
# (3, 3) -> 1
# (5, 3) -> 1
# (6, 3) -> 2
# numbers dividable by c under a.
# number of (i) .. i: 0 - a, i % c == 0
def nums(a, c)
  a / c
end

def gcd(a, b) 
  if (a < b) 
    # swap(a, b)
    tmp = a
    a = b
    b = tmp
  end

  if (b == 0) 
    return a
  end
  
  gcd(b, a % b)
end

cd = C * D / gcd(C, D) # lcm(C, D)

# 0..B
b = B - nums(B, C) - nums(B, D) + nums(B, cd)
# 0..A-1
a = (A-1) - nums(A-1, C) - nums(A-1, D) + nums(A-1, cd)

p b - a