H,W = gets.split.map(&:to_i)
ss = H.times.map{ gets }

horizontal = H.times.map{ [] }

H.times do |h|
  cont = 0
  W.times do |w|
    if ss[h][w] == '#'
      horizontal[h][w] = -1000000
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

horizontal = horizontal.transpose
ss = ss.map{|s| s.split('') }.transpose{|cs| cs.join }

max = 0
W.times do |h|
  cont = 0
  H.times do |w|
    if ss[h][w] == '#'
      next if w == 0
      cont.times do |i|
        score = (horizontal[h][w-i-1] || -1000000) + cont
        max = score if score > max
      end
      cont = 0
    else
      cont += 1
    end
  end
  cont.times do |i|
    score = (horizontal[h][H-i-1] || -1000000) + cont
    max = score if score > max
  end
end

puts max - 1
