n = gets.to_i
arr = gets.split()

for i in 0..n-1
  print arr[n-1-i]
  print " " if(i!=n-1)
end