require 'prime'

N = gets.to_i
A = gets.split.map(&:to_i)

def gcd(a, b)
  if a > b
    return a if b == 0

    gcd(b, a % b)
  else
    return b if a == 0

    gcd(a, b % a)
  end
end

# A1, A2,...Ai
L = Array.new(N+1) {0}
# Ai+1,...An
R = Array.new(N+1) {0}

L[0] = 0
for i in (1..N)
  L[i] = gcd(L[i-1], A[i-1])
end

# p L

R[N] = 0
(N-1).downto(0) do |i|
  R[i] = gcd(R[i+1], A[i])
end

# p R

ans = 0
for i in (1..N-1)
  gcd = gcd(L[i-1], R[i])
  # p "gcd(L[#{i-1}],R[#{i}])"
  if ans < gcd
    ans = gcd
  end
end

p ans
