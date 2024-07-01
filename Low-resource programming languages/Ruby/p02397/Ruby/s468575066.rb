while line = gets
  x, y = line.split.map(&:to_i)
  break if x.zero? && y.zero?

  if x <= y
    puts "#{x} #{y}"
  else
    puts "#{y} #{x}"
  end
end