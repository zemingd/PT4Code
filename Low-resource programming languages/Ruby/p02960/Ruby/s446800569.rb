def dd
    s = gets.chomp#.to_i#.map{|x| x.to_i}
    h = s.count('?')

    cnt = 0
    for i in 0..('9'*h).to_i
        j = sprintf("%0*d", h, i).split(//)#.map{|x| x.to_i}
        l = 0
        t = s.dup
        for k in 0..(s.length-1)
            if t[k] == '?'
                t[k] = j[l]
                l += 1
            end
        end
        cnt += 1 if t.to_i%13 == 5
    end

    puts cnt
end

dd