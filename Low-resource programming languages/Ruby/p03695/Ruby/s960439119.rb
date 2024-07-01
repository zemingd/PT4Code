n = gets.to_i
as = gets.split.map(&:to_i)

h = Hash.new(0)
any = 0

def color(n)
  case n
  when 1..399
    0
  when 400..799
    1
  when 800..1199
    2
  when 1200..1599
    3
  when 1600..1999
    4
  when 2000..2399
    5
  when 2400..2799
    6
  when 2800..3199
    7
  else
    8
  end
end


as.each do |a|
  c = color(a)
  if c == 8
    any += 1
  else
    h[c] = 1
  end
end

total_color_num = 8
min = h.values.reduce(0){|a,e|a+=e}
if min > 0
  tmp = [total_color_num - min, any].min
  max = min + tmp
elsif any > 0
  min = 1
  max = [total_color_num, any].min
else
  min = 0
  max = min
end