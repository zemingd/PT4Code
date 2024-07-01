require 'set'
N = gets.to_i
points = []

N.times do
  x, y, h = gets.split.map(&:to_i)
  points << [x, y, h]
end

ans = nil
found = false
0.upto(101) do |cx|
  break if found
  0.upto(101) do |cy|
    break if found
    heights = []
    negatives = []
    points.each do |p|
      x = p[0]
      y = p[1]
      h = p[2]
      if h == 0
        negatives << [x, y, h]
      else
        heights << (x - cx).abs + (y - cy).abs + h
      end
    end

    if heights.uniq.size == 1
      if negatives.empty?
        ans = [cx, cy, heights.first]
        found = true
        break
      else
        negatives.each do |p|
          x = p[0]
          y = p[1]
          h = p[2]
          if heights.first < (x - cx).abs - (y - cy).abs
            ans = [cx, cy, heights.first]
            found = true
            break
          end
        end
      end
    end
  end
end

p ans
