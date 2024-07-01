n = gets.to_i
ary = gets.split.map(&:to_i)

min = ary[0]
puts ary.count { |x| x <= min ? (min = x; true) : (false) }
