loop do
  x, y = gets.chomp.split(' ').map { |s| s.to_i }
  if x == 0 && y == 0 then break
  else
    if x <= y
      puts "#{x} #{y}"
    else
      puts "#{y} #{x}"
    end
  end
end