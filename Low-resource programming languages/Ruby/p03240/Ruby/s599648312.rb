n = gets.to_i
a = n.times.map{|i| gets.split.map(&:to_i)}
101.times do |x|
  101.times do |y|
    i, j, k = a[0]
    h = (i - x).abs + (j - y).abs + k
    next if h < 1
    if a.all?{|i, j, k| [h - (i - x).abs - (j - y).abs, 0].max == k }
      puts [x, y, h].join(' ')
      exit
    end
  end
end
