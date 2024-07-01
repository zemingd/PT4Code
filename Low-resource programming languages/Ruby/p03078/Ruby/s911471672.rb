X,Y,Z,K = gets.split.map(&:to_i)

A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

s = []

for i in 0..X-1 do
  for j in 0..Y-1 do
        s.push( A[i] + B[j] )
  end
end

s.sort!.reverse!

t = []

imax = [K-1, X*Y-1].min

for i in 0..imax do
  for j in 0..Z-1 do
    t.push( s[i] + C[j])
  end
end

t.sort!.reverse!

for i in 0..K-1 do
  puts t[i]
end
