input = $<.read.split("\n")
# W, H, N = input.shift.split.map(&:to_i)
W, H, N = input[0].split.map(&:to_i)

min_x = 0
min_y = 0
max_x = W
max_y = H

1.upto(N) do |n|
  x, y, a = input[n].split.map(&:to_i)
# end
# input.each do |line|
# x, y, a = line.split.map(&:to_i)
  case a
  when 1
    min_x = x if x > min_x
  when 2
    max_x = x if x < max_x
  when 3
    min_y = y if y > min_y
  when 4
    max_y = y if y < max_y
  else
    raise
  end
end

# p [max_x, min_x, max_y, min_y]

puts [0, (max_x - min_x) * (max_y - min_y)].max
