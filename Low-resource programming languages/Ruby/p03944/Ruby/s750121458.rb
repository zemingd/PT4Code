input = $<.read.split("\n")
W, H, N = input.shift.split.map(&:to_i)

min_x = 0
min_y = 0
max_x = W
max_y = H

input.each do |line|
  x, y, a = line.split.map(&:to_i)
  case a
  when 1
    min_x = x
  when 2
    max_x = x
  when 3
    min_y = y
  when 4
    max_y = y
  else
    raise
  end
end

# p [max_x, min_x, max_y, min_y]

puts [0, (max_x - min_x) * (max_y - min_y)].max
