n = gets.chomp.to_i
xs = gets.split.map(&:to_i)
sorted_xs = xs.sort
middle = n / 2 - 1
xs.each do |x|
  i = sorted_xs.bsearch_index { |e| e >= x }
  if i <= middle
    puts sorted_xs[middle + 1]
  else
    puts sorted_xs[middle]
  end
end
