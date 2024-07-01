n, k = gets.split.map(&:to_i)
try = Array.new(n+1, 0)
trymax = 0
for i in 1..n
  cnt = 0
  divs = k / i
  if k % i > 0
    divs += 1
  end
  while 1
    if (divs / (2 ** cnt) == 1 && divs % (2 ** cnt) == 0) || divs / (2 ** cnt) < 1
      break
    else
      cnt += 1
    end
  end
  try[i] = cnt
  trymax = cnt if trymax < cnt
end
gm = 2.0 ** trymax
gc = 0.0
for i in 1..n
  gc += gm / (2.0 ** try[i])
end
gm *= n
puts gc / gm