N=gets.to_i
A=gets.split.map(&:to_i)
B=gets.split.map(&:to_i)
C=gets.split.map(&:to_i)
point=B.inject(:+)

pre=-10
N.times do |i|
  if pre + 1 == A[i]
    point += C[A[i] - 1 - 1]
  end
  pre = A[i]
end
p point