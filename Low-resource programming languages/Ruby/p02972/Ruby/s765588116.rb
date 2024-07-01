N,*A = `dd`.split.map &:to_i
box = Array.new(N, 0)
(1..N).reverse_each{ |i|
  x = A[i-1]
  j = 2*i
  while j <= N do
    x += box[j-1]
    j += i
  end
  box[i-1] = x % 2
}
ans = (1..N).select{ |i| box[i-1] == 1 }
puts ans.size, ans * " "
