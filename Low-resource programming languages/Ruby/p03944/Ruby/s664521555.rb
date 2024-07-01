w, h, n = gets.split.map(&:to_i)
line_x, line_y = [*1..w], [*1..h]
n.times do
  x, y, a = gets.split.map(&:to_i)
  case
    when a == 1 then line_x.delete_if { |l| l <= x }
    when a == 2 then line_x.delete_if { |l| l > x }
    when a == 3 then line_y.delete_if { |l| l <= y }
    when a == 4 then line_y.delete_if { |l| l > y }
  end
end
puts line_x.size * line_y.size