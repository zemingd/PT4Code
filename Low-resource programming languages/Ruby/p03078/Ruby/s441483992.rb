X,Y,Z,K = gets.split.map(&:to_i)

A = gets.split.map(&:to_i).sort!.reverse!
B = gets.split.map(&:to_i).sort!.reverse!
C = gets.split.map(&:to_i).sort!.reverse!

s = []

for i in 0..X-1 do
  for j in 0..Y-1 do
    for k in 0..Z-1 do
      if (i+1)*(j+1)*(k+1) <= K
        s.push( A[i] + B[j] + C[k])
      end
    end
  end
end

s.sort!.reverse!

for i in 0..K-1 do
  puts s[i]
end
