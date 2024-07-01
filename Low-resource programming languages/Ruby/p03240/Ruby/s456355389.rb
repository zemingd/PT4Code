n = gets.to_i
a = n.times.map{|i| gets.split.map(&:to_i)}
101.times do |x|
  101.times do |y|
    possible_h = 0
    if a[0][2] == 0
      possible_h = (a[0][0] - x).abs + (a[0][1] - y).abs
    else
      possible_h = (a[0][0] - x).abs + (a[0][1] - y).abs + a[0][2] 
    end
    if a.all?{|i, j, k| [possible_h - (i - x).abs - (j - y).abs, 0].max == k }
      puts [x, y, possible_h].join(' ')
      exit
    end
  end
end
