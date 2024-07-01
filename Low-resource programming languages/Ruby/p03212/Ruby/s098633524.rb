N = gets().to_i
A = Array.new(N)
B = Array.new(N,0)
for i in 0 .. N
  A[i] = i.to_s
  for j in 0 .. i.length - 1
    if A[i][j].to_i == 0
      B[i] = B[i] + 1
    elsif A[i][j].to_i == 1
      B[i] = B[i] + 1
    elsif A[i][j].to_i == 2
      B[i] = B[i] + 1
    elsif A[i][j].to_i == 4
      B[i] = B[i] + 1
    elsif A[i][j].to_i == 6
      B[i] = B[i] + 1
    elsif A[i][j].to_i == 8
      B[i] = B[i] + 1
    elsif A[i][j].to_i == 9
      B[i] = B[i] + 1
    end
  end
end
puts B.cout(0)