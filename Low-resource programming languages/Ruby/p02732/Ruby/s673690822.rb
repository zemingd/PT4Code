N = gets.to_i
A = gets.chomp.split.map(&:to_i)


for j in (1..N) do
  zero = [0] * N

  (1..N).each do |i|
    zero[i-1] += A.count(i)
  end
  
  sum = 0
  zero[A[j-1]-1] -= 1
  for k in (1..N) do
    sum += zero[k-1] * (zero[k-1]-1) / 2
  end
  puts sum
end
