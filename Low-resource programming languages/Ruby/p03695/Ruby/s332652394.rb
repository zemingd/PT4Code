n = gets.to_i
r = gets.split(' ').map{|n| n.to_i}
o = 0

color = Array.new(8, 0)
r.each do |i|
  case i
  when 1..399
    color[0] = 1
  when 400..799
    color[1] = 1
  when 800..1199
    color[2] = 1
  when 1200..1599
    color[3] = 1
  when 1600..1999
    color[4] = 1
  when 2000..2399
    color[5] = 1
  when 2400..2799
    color[6] = 1
  when 2800..3199
    color[7] = 1
  when 3200..4800
    o += 1
  end
end

min = color.count(1)
if o.zero?
 puts "#{min} #{min}"
 exit
end

if min >= 7 || min + o >= 7
  max = 8
else
  max = min + o
end
puts "#{min} #{max}"
