    s = gets.chomp
    t = gets.chomp

    c = 0
    c += 1 if s[0] == t[0]
    c += 1 if s[1] == t[1]
    c += 1 if s[2] == t[2]

    puts c
