def ascan; gets.split.map(&:to_i);end
x = ascan.map(&:to_f).reduce(:+)
p (x/2).ceil