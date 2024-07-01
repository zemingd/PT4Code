count = 0
N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)


N.times do |i|
  if A[i] >= B[i]
    count += B[i]
  else
    count += A[i]
    B[i] -= A[i]
    if A[i+1] >= B[i]
      count += B[i]
      A[i+1] -= B[i]
    else
      count += A[i+1]
      A[i+1] = 0
    end
  end
end
puts count