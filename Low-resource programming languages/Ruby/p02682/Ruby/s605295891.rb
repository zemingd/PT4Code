A, B, C, K = gets.split(" ")

if K.to_i < A.to_i
  puts(K)
elsif K.to_i < A.to_i + B.to_i
  puts(A)
else
  puts(A.to_i + (K.to_i - (A.to_i + B.to_i)) * (-1))
end