n = gets.to_i
points = gets.split.map(&:to_i)

while true
  points.sort!
  min = points.first
  points = points.map.with_index { |point, i| i.zero? ? min : point % min }
  points = points.select { |point| !point.zero? }
  break if points.uniq.size == 1
end

puts points.first
