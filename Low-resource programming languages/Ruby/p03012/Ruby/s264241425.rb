n = gets.to_i
w = gets.split.map(&:to_i)
wr = w.reverse

lth = 0
rth = 0
a = 0
b = 0
for num in 0..n-1 do
  if a <= b 
    a += w[lth]
    lth += 1
  else
    b += wr[rth]
    rth += 1
  end    
end
p (a-b).abs