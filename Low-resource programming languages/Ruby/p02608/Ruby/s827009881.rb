A = [0] * (10**4+1)
N = gets.to_i
1.upto(99) {|x|
  i = 6*x*x
  A[i] += 1  if A[i]
  i = 3*x*x
  (x+1).upto(99) {|z|
    j = i + 2*x*z + z*z
    A[j] += 3  if A[j]
  }
  i = x*x
  (x+1).upto(99) {|y|
    j = i + 3*y*y + 2*x*y
    A[j] += 3  if A[j]
    j = i + (x+y)*y
    (y+1).upto(99) {|z|
      k = j + z*z + (x+y)*z
      A[k] += 6  if A[k]
} } }
puts A[1,N]