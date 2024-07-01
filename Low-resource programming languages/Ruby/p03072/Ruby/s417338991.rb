N = gets.chop.to_i
A = gets.chop.split.map(&:to_i)

h1 = A[0]
h2 = A[1]
v = 0
hi = A[v]
result = 0

def int()
  result = result+1
  v+1
end

while v == N-1 do
  if h1 < hi && h2 <hi && hi-1 < hi
        int()
  else
  end
end
puts result
