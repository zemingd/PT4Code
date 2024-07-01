w, h, n = gets.chomp.split.map(&:to_i)
xya = []
n.times { xya << gets.chomp.split.map(&:to_i) }

space = []
(0..w - 1).each do |x|
  space[x] = []
  (0..h - 1).each do |y|
    space[x][y] = false
  end
end

(1..n).each do |i|
  x, y, a = xya[i - 1]
  if a == 1
    (0..x - 1).each do |j|
      (0..h - 1).each do |k|
        space[j][k] = true
      end
    end
  elsif a == 2
    (x..w - 1).each do |j|
      (0..h - 1).each do |k|
        space[j][k] = true
      end
    end
  elsif a == 3
    (0..w - 1).each do |j|
      (0..y - 1).each do |k|
        space[j][k] = true
      end
    end
  elsif a == 4
    (0..w - 1).each do |j|
      (y..h - 1).each do |k|
        space[j][k] = true
      end
    end
  end
end

ret = 0
(0..w - 1).each do |x|
  (0..h - 1).each do |y|
    ret += 1 unless space[x][y]
  end
end
puts ret
