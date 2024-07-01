N = gets.to_i
xyhs = N.times.map { gets.split.map(&:to_i) }
(0..100).each do |i|
  (0..100).each do |j|
    candidates = xyhs.map do |(x, y, h)|
      [(i - x).abs + (j - y).abs + h, 0].max
    end.select { |h| h > 0 }
    next if candidates.empty?
    h = candidates[0]
    is_ok = candidates.drop(1).all? do |h2|
      h2 == h
    end
    if is_ok
      puts "#{i} #{j} #{h}"
      exit 0
    end
  end
end
