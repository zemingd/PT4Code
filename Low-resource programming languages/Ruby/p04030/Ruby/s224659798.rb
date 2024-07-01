s = gets.chomp.split('')
a = []
s.each{|c|
    if c == "B" 
        if a.size != 0
            a.pop
        end
    else
        a.push(c)
    end
    }
puts a.join