loop do
  x, y = gets.split.map(&:to_i).sort
  break if x.zero? and y.zero?
  puts "#{x} #{y}"
end
