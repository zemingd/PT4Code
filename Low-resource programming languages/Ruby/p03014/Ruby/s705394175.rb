H,W = gets.split.map(&:to_i)
ss = H.times.map{ gets.split('') }
# ss[H][W]

vertical = H.times.map{ [] }
horizontal = H.times.map{ [] }

H.times do |h|
  cont = 0
  W.times do |w|
    if ss[h][w] == '#'
      next if w == 0
      cont.times do |i|
        horizontal[h][w-i-1] = cont
      end
      cont = 0
    else
      cont += 1
    end
  end
  cont.times do |i|
    horizontal[h][W-i-1] = cont
  end
end

W.times do |w|
  cont = 0
  H.times do |h|
    if ss[h][w] == '#'
      next if h == 0
      cont.times do |i|
        vertical[h-i-1][w] = cont
      end
      cont = 0
    else
      cont += 1
    end
  end
  cont.times do |i|
    vertical[H-i-1][w] = cont
  end
end

max = 0
H.times do |h|
  W.times do |w|
    next if ss[h][w] == '#'
    score = horizontal[h][w] + vertical[h][w]
    max = score if score > max
  end
end

puts max - 1
