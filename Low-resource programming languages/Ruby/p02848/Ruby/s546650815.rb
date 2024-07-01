    n = gets.chomp.to_i
    s = gets.chomp
    az = 'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ'

    for i in 0..(s.length-1)
        s[i] = az[az.index(s[i])+n]
    end

    puts s
