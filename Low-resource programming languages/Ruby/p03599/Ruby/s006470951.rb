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

maxRate = 0
w = 0
s = 0

ws.each do |i|
  ss.each do |j|
    if i + j <= F
      rate = j.to_f / (i + j)
      if rate > maxRate && j * 100 <= E * i
        maxRate = rate
        w = i + j
        s = j
      end
    end
  end
end
w = A * 100 if w == 0
puts "#{w} #{s}"