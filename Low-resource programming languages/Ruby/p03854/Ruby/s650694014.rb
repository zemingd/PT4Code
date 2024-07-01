s = gets.chomp
while not s.empty?
    case s[0, 5]
    when "dream", "erase"
        if s[5, 2] == "er"
            if s[7] == "a"
                s = s[5..s.length-1]
            else
                s = s[7..s.length-1]
            end
        else
            s = s[5..s.length-1]
        end
    else
        print "NO"
        sys.exit
    end
end

print "YES"
