while input = gets
    num = input.chomp.split("").map(&:to_i)
    
    sum = 0
    num.each do |x|
        sum += x
    end
    
    if sum != 0
        puts sum
    else
        exit
    end
end
