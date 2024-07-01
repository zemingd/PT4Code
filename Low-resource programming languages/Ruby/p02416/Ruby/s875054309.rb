while true
    x = gets.chomp.to_i
    if x==0
        break
    end
    
    str=x.to_s
    sum = 0
    str.each_char {|c|
        sum+=c.to_i
    }
    puts sum
end