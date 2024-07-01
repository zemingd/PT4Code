A, B, C, D = gets.split.map(&:to_i)

puts result =
case A + B <=> C + D
when 1
  "Left"
when 0
  "Balanced"
when -1
  "Right"
end
