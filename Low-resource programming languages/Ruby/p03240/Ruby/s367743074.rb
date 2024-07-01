x, y, h = [], [], []
n = gets.to_i
n.times do |i|
  x[i], y[i], h[i] = gets.split.map(&:to_i)
end


101.times do |i|
  101.times do |j|
    hereH = -1
    n.times do |k|
      if h[k] > 0
        if hereH == -1
          hereH = h[k] + (x[k] - i).abs + (y[k] - j).abs
        else
          if hereH !=  h[k] + (x[k] - i).abs + (y[k] - j).abs
            hereH = -2
            break
          end
        end
      end
    end
    if hereH == -2
      next
    end
    n.times do |k|
      if h[k] ==  0
        dist =  (x[k] - i).abs + (y[k] - j).abs
        if hereH > dist
          hereH = -2
        end

      end
    end
    if hereH == -2
      next
    end
    printf("%d %d %d\n", i, j, hereH)
    exit


  end
end