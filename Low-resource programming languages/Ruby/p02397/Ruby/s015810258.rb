while true
        input = STDIN.gets.split(' ')
        break if input[0] == '0' && input[1] == '0'
        input.sort! {|x,y| x.to_i <=> y.to_i}

        puts input[0] + ' ' + input[1]
end