def abstract(str)
    count = 0
    map = {}
    map.default = -1
    str.chars.map{|c|
        n = map[c]
        if n == -1
            map[c] = count
            n = count
            count += 1
        end
        n
    }
end

if abstract(gets.chomp) == abstract(gets.chomp)
    puts "Yes"
else
    puts "No"
end
