a,b = gets.split.map(&:to_i)
A = Array.new
A[i] = i+1
for i  in 0..11
 if A[i] == a && A[i] > b
  puts(A[i-1])
  elsif A[i] == a && A[i] <= b
  puts(A[i])
 end
end