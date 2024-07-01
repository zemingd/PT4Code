X, Y = gets.split.map(&:to_i)

def calc(a, b)
  return Float::INFINITY if a > b

  b - a
end

puts [calc(X, Y), calc(-X, Y) + 1, calc(X, -Y) + 1, calc(-X, -Y) + 2].min
