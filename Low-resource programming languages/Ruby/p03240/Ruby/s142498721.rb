n = gets.to_i
points = []
n.times do
  x, y, h = gets.split.map(&:to_i)
  points << {x: x, y: y, h: h}
end
# p points # for debug
LIMIT = 100
flag = false

(0..LIMIT).each do |cx|
  (0..LIMIT).each do |cy|
    h_candidates = []
    points.each do |point|
      h_candidates << point[:h] + (cx - point[:x]).abs + (cy - point[:y]).abs
      break if h_candidates.sort.uniq.count > 1
    end
    # p h_candidates # for debug
    if h_candidates.sort.uniq.count == 1
      puts "#{cx} #{cy} #{h_candidates[0]}"
      flag = true
    end
    break if flag
  end
  break if flag
end
