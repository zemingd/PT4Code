n = gets.to_i
xs = gets.strip.split.map(&:to_i)
sorted = xs.sort.reverse

median = sorted[(n + 1) / 2 - 1]
median2 = sorted[(n + 1) / 2]

xs.each do |x|
  if x < median
  then
    puts median
  else
    puts median2
  end
end
