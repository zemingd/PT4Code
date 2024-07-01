
while true
    a,b,c=gets.split(" ")
     case b
        when "+"
            puts"#{a.to_i+c.to_i}"
        when "-"
            puts"#{a.to_i-c.to_i}"
        when "/"
            puts"#{a.to_i/c.to_i}"
        when "*"
            puts"#{a.to_i*c.to_i}"
        when "?"
            break
    end
end
