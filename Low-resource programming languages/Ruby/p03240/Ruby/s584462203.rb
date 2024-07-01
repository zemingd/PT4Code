n = gets.to_i
cords = n.times.map{gets.split.map(&:to_i)}

def check(cx, cy, h, cords)
  res = false
  cords.each do |cord|
    p [h - (cord[0] - cx).abs - (cord[1] - cy).abs, 0].max == cord[2]
    res = true if [h - (cord[0] - cx).abs - (cord[1] - cy).abs, 0].max == cord[2]
  end
  res
end

minheight = cords.map{|v|v[2]}.min
for height in minheight..1000000000 do
  for x in 0..100 do
    for y in 0..100 do
      if check(x, y, height, cords)
        puts "#{x} #{y} #{height}"
        exit
      end
    end
  end
end