loop do
  x,y = gets.split.map(&:to_i)
  if x == 0 && y ==0 then break end
  if x < y
    s = y
    y = x
    x = s
  end
  puts "#{x} #{y}"
end
