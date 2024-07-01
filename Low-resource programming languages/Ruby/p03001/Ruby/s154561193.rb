w, h, x, y = gets.split.map(&:to_i)
max = w * h / 2.0
type = 0
if (w / 2.0 == x * 1.0) && (h / 2.0 == y * 1.0)
  type = 1
end
puts "#{max} #{type}"