N = readline.to_i

points = N.times.map do |i|
  x,y,h = readline.split.map(&:to_i)
end

def calc_ch(p, cx, cy)
  (cx-p[0]).abs + (cy-p[1]).abs + p[2]
end

if N==1
  puts points[0].join(' ')
else
  positives = points.select {|x|x[2]>0}
  cand = []
  101.times do |cx|
    101.times do |cy|
      h1 = calc_ch(points[0], cx, cy)
      cand << [cx,cy,h1]
    end
  end
  positives[1..-1].each do |point|
    cand.select! {|c| c[2] == calc_ch(point, c[0], c[1]) }
  end
  zeros = points.select {|x| x[2] == 0}
  zeros.each do |point|
    cand.select! {|c| c[2] <= calc_ch(point,c[0],c[1])}
  end
  puts cand[0].join(' ')
end

