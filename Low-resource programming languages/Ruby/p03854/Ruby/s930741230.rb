s = gets.chomp.split("")
i = 0
a = []
while true
    arr = []
    kotoba = s.shift
    arr << kotoba
    if kotoba == "d"
        4.times do |i|
            if s != []
            kotoba = s.shift
            arr << kotoba
            end
        end
        if arr.join("") == "dream"
            if s[0] == "r"
                s.shift
            end
        else
            a << "NO"
            break
        end
    elsif kotoba == "e"
        4.times do |j|
            if s != []
            kotoba = s.shift
            arr << kotoba
            end
        end
        if arr.join("") == "erase"
            if s[0] == "r"
                s.shift
            end
        else
            a << "NO"
            break
        end
    else
        a << "NO"
        break
    end
    if s == []
        break
    end
end
if a == []
    puts "YES"
else
    puts a.pop
end