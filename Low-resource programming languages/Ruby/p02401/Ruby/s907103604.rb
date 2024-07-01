loop {
    a = gets.split(' ')
    if (a[1] == "?") 
        break
    end
    a[0], a[2] = a[0].to_i, a[2].to_i
    case a[1]
    when "+"
        puts(a[0] + a[2])
    when "-"
        puts(a[0] - a[2])
    when "*"
        puts(a[0] * a[2])
    when "/"
        puts(a[0] / a[2])
    end
}

