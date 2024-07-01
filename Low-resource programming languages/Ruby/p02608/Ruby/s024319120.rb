A = [0] * (10**4+1)
N = gets.to_i
1.upto(99) {|x|
  l = x*x
  1.upto(99) {|y|
    m = (x+y)*y + l
    1.upto(99) {|z|
      n = (x+y+z)*z + m
      A[n] += 1  if A[n]
} } }
puts A[1,N]