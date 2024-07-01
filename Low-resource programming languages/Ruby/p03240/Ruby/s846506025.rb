n = gets.to_i
pts = n.times.map{ gets.split.map(&:to_i) }
(0..100).each do |xx|
  (0..100).each do |yy|
    heights = pts.map{ |x, y, h| (x - xx).abs + (y - yy).abs + h }
    if heights.uniq.size == 1
   	  puts [xx, yy, heights[0]].join(" ")
      break	
    end
  end
end
