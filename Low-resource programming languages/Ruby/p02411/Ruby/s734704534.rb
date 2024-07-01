res = ""
loop do
        m,f,r = gets.split.map {|val| val.to_i}
        if (m === -1 and f === -1 and r === -1)
                break
        elsif (m === -1 or f === -1)
                res << "F\n"
        elsif (m+f >= 80)
                res << "A\n"
        elsif (65 <= m+f and m+f < 80)
                res << "B\n"
        elsif (50 <= m+f and m+f < 65)
                res << "C\n"
        elsif (30 <= m+f and m+f < 50)
                if (50 <= r)
                        res << "D\n"
                else
                  res << "D\n"
                end
        elsif (m+f < 30)
                res << "F\n"
        end
end

print res