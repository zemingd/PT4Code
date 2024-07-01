N = gets.to_i
xyh_list = N.times.map { gets.chomp.split(' ').map(&:to_i) }
xyh = xyh_list.find do |(_, _, h)|
  h >= 1
end

def calc_ph((cx, cy), (x, y, h))
  h + (x - cx).abs + (y - cy).abs
end

def calc_h((cx, cy, ph), (x, y))
  [ph - (x - cx).abs - (y - cy).abs, 0].max
end

(0..100).each do |cx|
  (0..100).each do |cy|
    cp = [cx, cy]
    ph = calc_ph(cp, xyh)
    ok = xyh_list.all? do |(x, y, h)|
      calc_h([cx, cy, ph], [x, y]) == h
    end
    if ok
      ph = calc_ph(cp, xyh)
      puts "#{cx} #{cy} #{ph}"
      exit 0
    end
  end
end
