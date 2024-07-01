N = gets.to_i
lists = []
lists1 = []
lists2 = []
N.times do
  s, t, u = gets.split.map(&:to_i)
  if u != 0
    lists1 << [s, t, u]
  else
    lists2 << [s, t, u]
  end
  lists << [s, t, u]
end

(0..100).each do |i|
  (0..100).each do |j|
    pre = nil
    check = true
    dist = nil
    lists.each do |x, y, z|
      next if z == 0
      dist = z + (i - x).abs + (j - y).abs
      if (pre ||= dist) != dist
        check = false
        break
      end
    end
    lists.each do |x, y, z|
      next if z != 0
      dist = (i - x).abs + (j - y).abs
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
