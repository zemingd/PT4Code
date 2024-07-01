N, M, C = gets.split(' ').map(&:to_i)
B = gets.split(' ').map(&:to_i)
A = []

for n in 0..(N-1) do
 A[n] = gets.split(' ').map(&:to_i)
end

count = 0
A.each.with_index do |a, i|
  sum = 0
  for n in 0..(M-1) do
    sum = sum + a[n] * B[n]
  end
  count = count + 1 if (sum+C) > 0
end

puts count
