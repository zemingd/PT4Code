a,b = gets.split.map(&:to_i)
A = Array.new
A[0] = 1
A[1] = 2
A[2] = 3
A[3] = 4
A[4] = 5
A[5] = 6
A[6] = 7
A[7] = 8
A[8] = 9
A[9] = 10
A[10] = 11
A[11] = 12
for i  in 0..11
 if A[i] == a && A[i] > b
  puts(A[i-1])
  elsif A[i] == a && A[i] <= b
  puts(A[i])
 end
end