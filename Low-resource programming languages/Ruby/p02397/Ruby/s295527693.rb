while (ary = gets.split(" ").map(&:to_i)) != [0, 0]
    
    min = ary.min
    max = ary.max
    
    puts "#{min} #{max}"
end
