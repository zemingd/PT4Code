n = gets.to_i
as = gets.split.map(&:to_i)

as_abs = as.map(&:abs)

s = as_abs.inject(&:+)
s -= as_abs.min*2 unless as.count(&:negative?).even?
puts s
