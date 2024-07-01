N = STDIN.gets.chomp.to_i
A = STDIN.gets.chomp.split(' ').map(&:to_i)

def gcd(x, y)
  x, y = y, x if x < y
  if y == 0 then
    return x
  end
  return gcd(x % y, y)
end

L = Array.new(N + 2)
R = Array.new(N + 2)

L[0] = R[N + 1] = 0

A.each_with_index{ |a, i|
  index = i + 1
  L[index] = gcd(L[index - 1], a)
}

A.each_with_index.reverse_each{ |a, i|
  index = i + 1
  R[index] = gcd(R[index + 1], a)
}

M = Array.new(N, 0)
for i in 1..N do
   M[i] = gcd(L[i-1], R[i+1])
end

puts M.max