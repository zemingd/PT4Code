w, h, n = gets.split.map(&:to_i)

ary = h.times.map { [false] * w }

n.times do |i|
  x, y, a = gets.split.map(&:to_i)
  if a == 1
    0.upto(h - 1) do |i|
      0.upto(x - 1) do |j|
        ary[i][j] = true
      end
    end
  elsif a == 2
    0.upto(h - 1) do |i|
      x.upto(w - 1) do |j|
        ary[i][j] = true
      end
    end
  elsif a == 3
    0.upto(y - 1) do |i|
      0.upto(w - 1) do |j|
        ary[i][j] = true
      end
    end
  elsif a == 4
    y.upto(h - 1) do |i|
      0.upto(w - 1) do |j|
        ary[i][j] = true
      end
    end
  else
    raise "Invalid a = " + a
  end
end

count = 0
h.times do |i|
  w.times do |j|
    count += 1 if ary[i][j] == false
  end
end

puts count
