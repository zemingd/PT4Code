x=gets.to_i

(0...1000).each{|b|(b...1000).each{|a|
    a5 = a**5
    b5 = b**5
    [[a5+b5,a,-b],[a5-b5,a,b]].each{|(v,a,b)|
        if v == x
            print "#{a} #{b}"
            exit
        end
    }
}}