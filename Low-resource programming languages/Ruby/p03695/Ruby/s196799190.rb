n = gets.to_i
a = gets.split(" ").map(&:to_i)

colors = [0] * 8
legend = 0

a.each do |a_i|
  case a_i
  when 1..399 then
    colors[0] = 1
  when 400..799 then
    colors[1] = 1
  when 800..1199 then
    colors[2] = 1
  when 1200..1599 then
    colors[3] = 1
  when 1600..1999 then
    colors[4] = 1
  when 2000..2399 then
    colors[5] = 1
  when 2400..2799 then
    colors[6] = 1
  when 2800..3199 then
    colors[7] = 1
  else
    legend += 1
  end
end

normal_colors_count = colors.inject(0, &:+)
min = legend > 0 ? [normal_colors_count, 1].max : normal_colors_count
max = normal_colors_count + legend
puts "#{min} #{max}"
