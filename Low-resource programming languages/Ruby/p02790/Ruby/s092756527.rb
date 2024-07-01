a, b = gets.split.map(&:to_i)
as, bs = a.to_s * b, b.to_s * a
puts [as, bs].min