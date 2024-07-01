def bubble(A,n)
   t = 0           
   for i in 0..n-1
    j = 0
    while A[i-j] < A[i-j-1] and j <= i-1
      k = A[i-j]
      A[i-j] = A[i-j-1]
      A[i-j-1] = k
      j += 1
      t += 1
    end
  end

