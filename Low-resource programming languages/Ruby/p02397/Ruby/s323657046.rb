loop {
    x = gets.split(' ')
    x[0] = x[0].to_i
    x[1] = x[1].to_i
    if (x[0] == 0 && x[1] == 0)
        break
    end
    x[0], x[1] = x[1], x[0]
    puts("#{x[0]} #{x[1]}")
}

