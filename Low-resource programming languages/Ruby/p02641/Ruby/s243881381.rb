x, n = gets.split(" ").map(&:to_i)
if n == 0
  puts x
  exit
end
m = 0
pa = gets.split(" ").map(&:to_i).sort
t = []
-1.upto(101){ |i|
  t[i+1] = i
}
for i in 0..n-1
  t.delete(pa[i])
end
m = 0
for i in 0..t.length
  if t[i] > x
    m = i
    break
  end
end
puts (x - t[m-1]).abs <= (t[m] - x).abs ? t[m-1] : t[m]