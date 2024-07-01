n,k=gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split.map(&:to_i)
c = 1
d = 0
for i in 0..n-k do
  for q in i..i + k - 1 do
    c = c * a[q]
  end
  if i == 0
    d = c
    c = 1
    next
  else
    if c > d
      puts('Yes')
    else
      puts ('No')
    end
  end
  # puts("c: " + c.to_s + "d: " + d.to_s)
  d = c
  c = 1
end