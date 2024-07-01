s = gets.chop
ans = -1
c = 0
(0..(s.length-1)).each{ |i|
    if ['A', 'T', 'G', 'C'].include?(s[i])
        c += 1
    else
        ans = [ans, c].max
        c = 0
    end
}
ans = [ans, c].max
puts ans