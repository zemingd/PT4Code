# frozen_string_literal: true

h, w = gets.split.map(&:to_i)
s = h.times.map { gets.chomp.chars }

dw = []
dh = []

0.upto(h - 1) do |i|
  cw = []
  0.upto(w - 1) do |j|
    if s[i][j] == '#'
      cw.push 0
    elsif j.zero? || s[i][j - 1] == '#'
      count = 0
      j.upto(w - 1) do |k|
        if s[i][k] == '.'
          count += 1
          cw.push count if k == w - 1
        else
          cw.push count
          break
        end
      end
    else
      cw.push cw[j - 1]
    end
  end
  dw.push cw
end

0.upto(w - 1) do |j|
  ch = []
  0.upto(h - 1) do |i|
    if s[i][j] == '#'
      ch.push 0
    elsif i.zero? || s[i - 1][j] == '#'
      count = 0
      i.upto(h - 1) do |k|
        if s[k][j] == '.'
          count += 1
          ch.push count if k == h - 1
        else
          ch.push count
          break
        end
      end
    else
      ch.push ch[i - 1]
    end
  end
  dh.push ch
end

max = 0
0.upto(h - 1) do |i|
  0.upto(w - 1) do |j|
    sum = dw[i][j] + dh[j][i]
    max = sum if max < sum
  end
end
puts max - 1
