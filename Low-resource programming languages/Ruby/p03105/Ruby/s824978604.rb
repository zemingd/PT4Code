def ints
  gets.split.map(&:to_i)
end

A, B, C = ints
puts [C, B / A].min
