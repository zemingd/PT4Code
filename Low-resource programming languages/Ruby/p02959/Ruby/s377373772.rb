N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

count = 0

N.times do |i|
  if A[i] < B[i]
    count += A[i]
    B[i] -= A[i]
    if A[i+1] < B[i]
      count += A[i+1]
      A[1] = 0
    else
      count += B[i]
      A[i+1] -= B[i]
    end
  else
    count += B[i]
  end
end

puts count