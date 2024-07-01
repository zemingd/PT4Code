n = gets.chomp.to_i
i, x = 1, 1

loop do
    x = i
    if x % 3 == 0
        print " #{i}"
    elsif x % 10 == 3
        print " #{i}"
    end
    
    i += 1 if i <= n
    break if i > n
end
puts ""