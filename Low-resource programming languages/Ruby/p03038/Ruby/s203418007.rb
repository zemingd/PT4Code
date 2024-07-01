n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
op = []
for i in 0...m do
  b, c = gets.split.map(&:to_i)
  op.push([b, c])
end
op.sort! { |e, f|
  -e[1] <=> -f[1]
}
nn = 0
sum = 0
stop = false
for nnn in nn...n do
  sum += a[nnn]
end
puts sum
