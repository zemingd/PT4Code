A, B, C, D, E, F = gets.split.map(&:to_i)

ws = []
ss = []

0.upto(F / A) do |i|
  0.upto(F / B) do |j|
    next if i == 0 && j == 0
    wv = 100 * i * A + 100 * j * B
    if wv <= F
      ws << wv
    end
  end
end

0.upto(F / C) do |i|
  0.upto(F / D) do |j|
    next if i == 0 && j == 0
    sv = i * C + j * D
    if sv <= F
      ss << sv
    end
  end
end

ws.uniq!
ws.sort!
ss.uniq!
ss.sort!

maxRate = 0

result = []

ws.each do |w|
  ss.each do |s|
    next if w + s > F

    rate = s * 100 / (w + s)
    if rate > maxRate && s * 100 <= E * w
      maxRate = rate
      result = [w + s, s]
    end
  end
end