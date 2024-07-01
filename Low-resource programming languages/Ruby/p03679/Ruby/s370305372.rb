N = gets.to_i
A = N.times.map{ gets.to_i-1 }

$h = {}
i = n = 0
while !$h[i]
  $h[i] = n
  i = A[i]
  n += 1
end
p $h[1] || -1
