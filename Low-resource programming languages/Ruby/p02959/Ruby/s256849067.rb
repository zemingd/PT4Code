N = gets.to_i
A = gets.split.map(&:to_i)
orign = A.inject(&:+)
B = gets.split.map(&:to_i)

N.times do |i|
  if A[i] >= B[i]
    A[i] -= B[i]
  else
    B[i] -= A[i]
    A[i] = 0
    if A[i+1] <= B[i]
      A[i+1] = 0
    else
      A[i+1] -= B[i]
    end
  end
end

puts orign - A.inject(&:+)