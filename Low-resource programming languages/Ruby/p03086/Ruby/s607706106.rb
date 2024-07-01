s = gets.chomp
stop = false
max = 0
l = s.length
l.downto(1){|x|
    0.upto(l - x){|y|
        if ((s[y, x].split("")) - ["A","C","G","T"]).length == 0
            max = x
            stop = true
            break
        end
    }
    break if stop
}
puts max