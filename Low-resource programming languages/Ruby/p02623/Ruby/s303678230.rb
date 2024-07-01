N, M, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

a = [0]
b = [0]

A.size.times{ |i| a << A[i] + a.last }
B.size.times{ |i| b << B[i] + b.last }

i = 0
j = B.size
max = 0
while i < a.size && j >= 0
  if a[i] + b[j] <= K
    max = i+j if max < i+j
    i += 1
  else
    j -= 1
  end
end

puts max