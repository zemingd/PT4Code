def rounding(x, a)
  x < a ? 0 : 10
end

x, a = gets.split.map(&:to_i)

puts rounding(x, a)
