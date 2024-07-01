n, x0 = gets.split.map(&:to_i)
x = (gets.split.map(&:to_i) + [x0]).sort

delta = (0...x.size-1).map.with_index do |n, i|
  x[i+1] - x[i]
end

puts delta.inject(:gcd)