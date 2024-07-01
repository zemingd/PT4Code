N = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

number_parted_a = a.map {|x| (x/400).to_i }.sort
legends, without_legends = number_parted_a.partition {|x| x>7 }

colored_count = without_legends.group_by {|x| x }.length
legend_count = legends.length

min = if colored_count>0
    colored_count
  else
    1
  end

[colored_count, 1].max

max = [colored_count + legend_count, 8].min

puts [min, max].join(' ')
