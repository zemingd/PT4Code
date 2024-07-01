N = gets.chop.to_i
A = gets.chop.split.map(&:to_i)

colors = {grey: false, brown: false, green: false, water: false, blue: false, yellow: false, orange: false, red: false}
wild = 0

A.each do |i|
  if 1 <= i && i <= 399
    colors[:grey] = true
  elsif 400 <= i && i <= 799
    colors[:brown] = true
  elsif 800 <= i && i <= 1199
    colors[:green] = true
  elsif 1200 <= i && i <= 1599
    colors[:water] = true
  elsif 1600 <= i && i <= 1999
    colors[:blue] = true
  elsif 2000 <= i && i <= 2399
    colors[:yellow] = true
  elsif 2400 <= i && i <= 2799
    colors[:orange] = true
  elsif 2800 <= i && i <= 3199
    colors[:red] = true
  else
		wild += 1
  end
end

color_count = 0
colors.each do |k, v|
  color_count += 1 if v == true
end

min, max = 0, 0

if color_count >= 1
  min = color_count
else
  min = 1
end

max = color_count + wild

puts "#{min} #{max}"