N = gets.to_i
lists1 = []
lists2 = []
N.times do
  s, t, u = gets.split.map(&:to_i)
  if u != 0
    lists1 << [s, t, u]
  else
    lists2 << [s, t, u]
  end
end

(0..100).each do |i|
  (0..100).each do |j|
    pre = nil
    check = true
    dist = nil
    lists1.each do |x, y, z|
      dist = z + (i - x).abs + (j - y).abs
      if (pre ||= dist) != dist
        check = false
        break
      end
    end
    lists2.each do |x, y, z|
      dist = z + (i - x).abs + (j - y).abs
      if pre > dist
        check = false
        break
      end
    end
    if check
      puts "#{i} #{j} #{dist}"
      exit
    end
  end
end
