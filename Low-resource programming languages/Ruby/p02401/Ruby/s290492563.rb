while true
        input = STDIN.gets.split(' ')

        break if input[0] == '0' && input[1] == '?' && input[2] == '0'

        case input[1]
        when '+'
                puts input[0].to_i + input[2].to_i
        when '-'
                puts input[0].to_i - input[2].to_i
        when '*'
                puts input[0].to_i * input[2].to_i
        when '/'
                puts input[0].to_i / input[2].to_i
        end

end