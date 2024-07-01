n = gets.to_i
as = gets.split.map(&:to_i)

as_abs = as.map(&:abs)

s = as_abs.inject(0){|sum, i| sum + i}
s -= as_abs.min*2 unless as.count{|i| i < 0}.even?
puts s
