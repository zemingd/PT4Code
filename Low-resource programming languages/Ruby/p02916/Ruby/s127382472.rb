N = gets.chop.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)
ans = 0

N.times do |i|
  ans += B[A[i]-1]
  if i>0 && A[i]-A[i-1]==1
    ans += C[A[i-1]-1]
  end
end

print ans