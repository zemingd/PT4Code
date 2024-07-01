while true do
  x, y = gets.split.map(&:to_i)
  if x.zero? && y.zero?
    break
  elsif x < y
    puts "#{x} #{y}"
  elsif y <= x
    puts "#{y} #{x}"
  end
end