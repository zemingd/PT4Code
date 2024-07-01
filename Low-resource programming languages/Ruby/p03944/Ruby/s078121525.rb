W, H, N = gets.split.map(&:to_i)
xya = N.times.map { gets.split.map(&:to_i) }
map = Array.new(W * H, true)

xya.each do |x,y,a|
  w_min = 0
  w_max = W - 1
  h_min = 0
  h_max = H - 1
  case a
  when 1
    w_max = x - 1
  when 2
    w_min = x
  when 3
    h_max = y - 1
  when 4
    h_min = y
  end
  (w_min..w_max).each do |w|
    (h_min..h_max).each do |h|
      map[h * W + w] = false
    end
  end
end

p map.count(&:itself)
