nk = gets.split.map(&:to_i)
n = nk[0]
k = nk[1]
a = k
if n > 1
  for i in 2..n
    a = a * (k-1)
  end
end
p a