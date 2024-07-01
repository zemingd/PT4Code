N = gets.to_i
xyhs = N.times.map { gets.split.map(&:to_i) }
(0..100).each do |i|
  (0..100).each do |j|
    xyh = xyhs[0]
    h = [(i - xyh[0]).abs + (j - xyh[1]).abs + xyh[2], 0].max
    next if h == 0
    is_ok = xyhs.drop(1).all? do |(x, y, h2)|
      [(i - x).abs + (j - y).abs + h2, 0].max == h
    end
    if is_ok
      puts "#{i} #{j} #{h}"
      exit 0
    end
  end
end
