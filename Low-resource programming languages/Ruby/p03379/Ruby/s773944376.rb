N = gets.chomp.to_i
X = gets.chomp.split().map(&:to_i)
sorted_X = X.sort

ml = sorted_X[sorted_X.length/2 - 1]
mr = sorted_X[sorted_X.length/2]

X.each do |x|
  puts(x <= ml ? mr : ml)
end
