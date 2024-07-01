N = gets.to_i
xyhs = N.times.map { gets.split.map(&:to_i) }
filtered = xyhs.select { |(x, y, h)| h >= 1 }
(0..100).each do |i|
  (0..100).each do |j|
    hs = filtered.map do |(x, y, h)|
      (i - x).abs + (j - y).abs + h
    end
    h = hs[0]
    is_ok = hs.drop(1).all? do |h2|
      h2 == h
    end
    if is_ok
      puts "#{i} #{j} #{h}"
      exit 0
    end
  end
end
