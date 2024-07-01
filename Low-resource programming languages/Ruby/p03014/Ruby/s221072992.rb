# frozen_string_literal: true

h, w = gets.split.map(&:to_i)
s = h.times.map { gets.chomp.chars }

dw = Array.new(h) { Array.new(w) }
dh = Array.new(w) { Array.new(h) }

0.upto(h - 1) do |i|
  count = 0
  0.upto(w - 1) do |j|
    if s[i][j] == '#'
      dw[i][j] = 0
    elsif j.zero? || s[i][j - 1] == '#'
      count = 0
      j.upto(w - 1) do |k|
        if s[i][k] == '.'
          count += 1
        else
          break
        end
      end
      dw[i][j] = count
    else
      dw[i][j] = count
    end
  end
end

0.upto(w - 1) do |j|
  count = 0
  0.upto(h - 1) do |i|
    if s[i][j] == '#'
      dh[j][i] = 0
    elsif i.zero? || s[i - 1][j] == '#'
      count = 0
      i.upto(h - 1) do |k|
        if s[k][j] == '.'
          count += 1
        else
          break
        end
      end
      dh[j][i] = count
    else
      dh[j][i] = count
    end
  end
end

max = 0
0.upto(h - 1) do |i|
  0.upto(w - 1) do |j|
    sum = dw[i][j] + dh[j][i]
    max = sum if max < sum
  end
end
puts max - 1
