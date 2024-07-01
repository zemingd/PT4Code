def bb
    a = gets.chomp.to_i
    b = gets.chomp.to_i
    c = gets.chomp.to_i
    d = gets.chomp.to_i
    e = gets.chomp.to_i

    o = [a, b, c, d, e]
    sa = [0] # ...
    to = 0
    for i in 1..5
        am = o[i-1] % 10
        unless am == 0
            sa.push(10 - am)
            to += o[i-1] + 10 - am
        else
            to += o[i-1]
        end
    end

    #p sa
    p to-sa.max
end

bb
