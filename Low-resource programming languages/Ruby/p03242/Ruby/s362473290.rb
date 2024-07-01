def aa
    n = gets.chomp

    n[0] = n[0] == '1' ? '9' : '1'
    n[1] = n[1] == '1' ? '9' : '1'
    n[2] = n[2] == '1' ? '9' : '1'

    puts n
end

aa