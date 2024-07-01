N = gets.to_i
A = gets.chomp.split.map(&:to_i)
result = 0
for i in 0..N-2
  for j in (i+1)..N-1
    result = result + A[i]^A[j] % ( 10 ** 9 + 7 )
  end
end
p result 