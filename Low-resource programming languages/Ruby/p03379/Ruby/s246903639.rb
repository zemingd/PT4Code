N = gets.to_i
X = gets.split.map(&:to_i)
sorted_x = X.sort
med = sorted_x[X.size / 2]

X.each do |x|
  puts sorted_x[(X.size + (x < med ? 1 : -1)) / 2]
end