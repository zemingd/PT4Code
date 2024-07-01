N = gets.to_i
X = gets.split.map(&:to_i)
sorted_x = X.sort
med = sorted_x[X.size / 2]

X.each do |x|
  if x < med
    puts sorted_x[(X.size + 1) / 2]
  else
    puts sorted_x[(X.size - 1) / 2]
  end
end
