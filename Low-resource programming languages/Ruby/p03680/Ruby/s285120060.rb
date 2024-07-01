N = gets.to_i
A = N.times.map{ gets.to_i-1 }

$h = {}
def f(i, n=0)
  if !$h[i]
    $h[i] = n
    f(A[i], n+1)
  end
end

f(0)
p $h[1] || -1
