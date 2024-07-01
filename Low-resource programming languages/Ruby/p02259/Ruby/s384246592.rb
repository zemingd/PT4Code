def bubble(A,n)
   flag = 0           
   for i in 0..n-1
    j = 0
    while A[i-j] < A[i-j-1] and j <= i-1
      k = A[i-j]
      A[i-j] = A[i-j-1]
      A[i-j-1] = k
      j += 1
      flag += 1
    end
  end
  print (A)
  print ("\n")
  print (flag)
  print ("\n")
  return 0
end
