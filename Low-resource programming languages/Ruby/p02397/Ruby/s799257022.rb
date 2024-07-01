i = 0
STDIN.each_line do |line|
    tokens = line.chomp!.split.map!(&:to_i)
    x, y = *tokens
    break if x == 0 && y == 0
    if x > y then 
      puts "#{y} #{x}"
    else
      puts "#{x} #{y}"
    end
end