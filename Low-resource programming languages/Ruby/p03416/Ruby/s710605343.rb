a, b = gets.split.map(&:to_i)
print (a..b).count {|i| i.to_s == i.to_s.reverse}