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
ii = 0
for i in 0...m do
  for j in 1..op[ii][0] do
    if a[nn] >= op[ii][1]
      stop = true
      break
    end
    sum += op[ii][1]
    nn += 1
  end
  break if stop
end
for nnn in nn...n do
  sum += a[nnn]
end
puts sum
