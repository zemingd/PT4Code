gets
t = gets.split.map(&:to_i)
s = 0
t.combination(2){|a, b|
  s += a * b
}
puts s