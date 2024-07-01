loop do
  x, y = gets.chomp.split.map(&:to_i)
  break if x.zero? and y.zero?
  if x < y
    puts "#{x} < #{y}"
  else
    puts "#{y} < #{x}"
  end
end