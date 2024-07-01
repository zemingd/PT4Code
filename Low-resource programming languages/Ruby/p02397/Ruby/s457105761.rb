loop do
  x,y = gets.chomp.split.map(&:to_i)
  if x == 0 && y == 0
    break
  end
  puts x < y ? "#{x} #{y}" : "#{y} #{x}"
end