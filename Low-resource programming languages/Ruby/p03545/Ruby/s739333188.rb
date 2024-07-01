s = gets.chomp.chars.map(&:to_i)
a = [1, -1]
b = ["", "+", "-"]
a.each {|x| a.each {|y| a.each{|z|
    if s[0] + s[1] * x + s[2] * y + s[3] * z == 7 
        puts "%d%s%d%s%d%s%d=7" % [s[0], b[x], s[1], b[y], s[2], b[z], s[3]]
        exit
    end
    }}}