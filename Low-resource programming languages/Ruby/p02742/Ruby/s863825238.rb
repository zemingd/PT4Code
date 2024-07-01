h, w = gets.split.map(&:to_i)

answer =
if (h == 1 || w == 1)
  1
else
  (h * w / 2.0).ceil
end

puts answer
