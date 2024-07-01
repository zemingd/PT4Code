n,k=gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split.map(&:to_i)
c = 1
d = 0
for i in 0..n-k-2 do
  c = c * a[i]
end
d = c
for i in 0..n-k-1 do
  c = c/a[i]
  c = c * a[k + i]
  if c > d
    puts('Yes')
  else
    puts ('No')
  end
  # puts("c: " + c.to_s + "d: " + d.to_s)
  d = c
end