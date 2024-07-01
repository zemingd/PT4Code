gets
a = gets.split.map(&:to_i)

colors = Hash.new(0)

a.each do |rate|
  case rate
  when 1..399
    colors[:gray] += 1
  when 400..799
    colors[:brown] += 1
  when 800..1199
    colors[:green] += 1
  when 1200..1599
    colors[:light_blue] += 1
  when 1600..1999
    colors[:blue] += 1
  when 2000..2399
    colors[:yellow] += 1
  when 2400..2799
    colors[:orange] += 1
  when 2800..3199
    colors[:red] += 1
  else
    colors[:others] += 1
  end
end

colors_num = colors.keys.length

if colors_num == 1 && colors.include?(:others)
  puts "1 #{colors[:others]}"
elsif colors.include?(:others)
  puts "#{colors_num - 1} #{colors_num - 1 + colors[:others]}"
else
  puts "#{colors_num} #{colors_num}"
end
