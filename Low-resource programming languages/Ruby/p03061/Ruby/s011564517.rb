N = gets.to_i
A = gets.split.map(&:to_i)

left = [A[0]]
right = [A[N-1]]

for i in 1..N-1 do
  left[i] = left[i-1].gcd(A[i])
  right[i] = right[i-1].gcd(A[N-1-i])
end
max = 1

for i in 0..N-1 do
  tmp =
  if i == 0
    right[N-2]
  elsif i == N-1
    left[N-2]
  else
    left[i-1].gcd(right[N-i-2])
  end
  max = tmp if max < tmp
end

puts max
