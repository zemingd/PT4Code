loop do
    x, y = gets.chomp.split.map(&:to_i).sort
    if x == 0 && y == 0
        break
    else
        puts "#{x} #{y}"
    end
end