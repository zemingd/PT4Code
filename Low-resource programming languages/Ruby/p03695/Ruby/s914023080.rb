def get_color(score)
  return :gray    if score <= 399
  return :brown   if score <= 799
  return :green   if score <= 1199
  return :water_blue if score <= 1599
  return :blue    if score <= 1999
  return :yellow  if score <= 2399
  return :orange  if score <= 2799
  return :red     if score <= 3199
  return :any
end

_       = STDIN.gets.chomp
numbers = STDIN.gets.split(/\s+/).map{|it| it.to_i }
hash    = numbers.collect{|it| get_color(it) }.reduce({}){|h,it| h[it] ||= 0; h[it] += 1; h }
color_size = hash.keys.size

if hash.key?(:any)
  min = color_size >= 2 ? color_size - 1 : 1
  max = hash[:any] >= 8 ? 8 : color_size - 1 + hash[:any]
else
  min = color_size
  max = color_size
end

puts [min, max].join(" ")
