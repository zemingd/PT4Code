N = gets.to_i
A = gets.split.map &:to_i
B = gets.split.map &:to_i

init = A.inject(:+)

N.times do |i|
  if B[i] <= A[i]
    A[i] -= B[i]
  else
    B[i] -= A[i]
    A[i] = 0
    if B[i] <= A[i+1]
      A[i+1] -= B[i]
    else
      A[i+1] = 0
    end
  end
end

result = A.inject(:+)

puts init - result
