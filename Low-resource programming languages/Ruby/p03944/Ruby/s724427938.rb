w, h, n = gets.chomp.split.map(&:to_i)

xya = []
n.times { xya << gets.chomp.split.map(&:to_i) }

left_lower = { x: 0, y: 0 }
right_upper = { x: w, y: h }

(1..n).each do |i|
  x, y, a = xya[i - 1]
  case a
  when 1
    left_lower[:x] = x if left_lower[:x] < x
  when 2
    right_upper[:x] = x if right_upper[:x] > x
  when 3
    left_lower[:y] = y if left_lower[:y] < y
  when 4
    right_upper[:y] = y if right_upper[:y] > y
  end
end

x = right_upper[:x] - left_lower[:x]
y = right_upper[:y] - left_lower[:y]
x = 0 if x < 0 || y < 0

puts x * y
