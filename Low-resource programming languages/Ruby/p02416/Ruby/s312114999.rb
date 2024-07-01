while num = gets
    answer = 0
    return if num == '0'
    (num.chomp).each_char{|ch|
        answer += ch.to_i
    }
    puts answer
end

