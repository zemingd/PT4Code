n = gets.chomp.to_i
list = n.times.map { gets.chomp.split(' ').map(&:to_i) }

0.upto(100).each do |x|
  0.upto(100).each do |y|
    ch = -1
    result = list.all? do |nums|
      x1, y1, h1 = nums
      if h1 != 0
        ch_tmp = h1 + (x1 - x).abs + (y1 - y).abs
        if ch == -1
          ch = ch_tmp
        else
          if ch != ch_tmp
            next false
          end
        end
      else
        next false if x == x1 && y == y1
      end
      true
    end
    if result
      puts "#{x} #{y} #{ch}"
    end
  end
end
