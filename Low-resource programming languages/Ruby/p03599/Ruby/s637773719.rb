A, B, C, D, E, F = gets.split.map(&:to_i)

ws = []

wm = F / 100

0.upto(wm) do |i|
  0.upto(wm) do |j|
    next if i == 0 && j == 0
    wv = 100 * i * A + 100 * j * B
    if wv <= F
      ws << wv
    end
  end
end

pair = []
ss = []

ws.sort!.uniq!

ws.each do |w|
  sm = (F - w) / C

  if sm < 0
    next
  end

  0.upto(sm) do |i|
    0.upto(sm) do |j|
      next if i == 0 && j == 0

      ssum = i * C + j * D
      next if w + ssum > F
      next if w < ssum

      rate = (ssum * 100) / (w + ssum)
      next if rate > E

      pair << [w, ssum]
      ss << rate
    end
  end
end

d = pair[ss.index(ss.max)]
puts [d[0] + d[1], d[1]].join(' ')