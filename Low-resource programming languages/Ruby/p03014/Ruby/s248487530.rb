H,W = gets.split.map(&:to_i)
ss = H.times.map{ gets }

horizontal = []
vertical = []

H.times do |h|
  from = -1
  W.times do |w|
    if ss[h][w] == '#'
      horizontal << [[h, from], [h, w-1]] if from != -1
      from = w + 1
    elsif from == -1
      from = w
    end
  end
  horizontal << [[h, from], [h, W-1]] if ss[h][W-1] == '.'
end

W.times do |w|
  from = -1
  H.times do |h|
    if ss[h][w] == '#'
      vertical << [[from, w], [h-1, w]] if from != -1
      from = h + 1
    elsif from == -1
      from = h
    end
  end
  vertical << [[from, w], [H-1, w]] if ss[H-1][w] == '.'
end

# puts horizontal.map{|h| h.to_s }.to_s
# puts vertical.map{|v| v.to_s }.to_s

max = -1
horizontal.each do |ho|
  vertical.each do |vt|
    x_include = ho[0][1] <= vt[0][1] && vt[0][1] <= ho[1][1]
    y_include = vt[0][0] <= ho[0][0] && ho[0][0] <= vt[1][0]
    if x_include && y_include
      score = (ho[1][1] - ho[0][1] + 1) + (vt[1][0] - vt[0][0] + 1) - 1
      if score > max
        max = score
        # puts ho.map{|h| h.to_s }.to_s + ' and ' + vt.map{|h| h.to_s }.to_s + ' got ' + score.to_s
      end
    end
  end
end
puts max
