a, b = gets.split.map!(&:to_i)
d, r = a.divmod(b)
f = a.fdiv(b)
puts "#{d} #{r} %.5f" % f

