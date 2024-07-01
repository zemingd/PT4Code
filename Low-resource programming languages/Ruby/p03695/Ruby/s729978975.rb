N = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

color_parted_a_without_parted_legends = a.map {|x| (x/400).to_i }.sort
legends, without_legends = color_parted_a_without_parted_legends.partition {|x| x>7 }

legend_count = legends.length

count_hash = without_legends.group_by {|x| x }
color_counted_array = count_hash.map{|x| x.last.length }


#p color_counted_array

min = [color_counted_array.length, 1].max
max = [color_counted_array.length + legend_count, 8].min

puts [min, max].join(' ')
