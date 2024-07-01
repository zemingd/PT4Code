s = gets.split.map{|item| item.to_i}

x = []
y = []
z = []

    if s[0] = 1 || s[0] = 3 || s[0] = 5 || s[0] = 7 || s[0] = 8 || s[0] = 10 || s[0] = 12
        x.push(s[0])
    elsif s[0] = 4 ||s[0] = 6 ||s[0] =9 ||s[0] =11
        y.push(s[0])
    else
        z.push(s[0])
    end

    if s[1] = 1 || s[1] = 3 || s[1] = 5 || s[1] = 7 || s[1] = 8 || s[1] = 10 || s[1] = 12
        x.push(s[1])
    elsif s[1] = 4 ||s[1] = 6 ||s[1] =9 ||s[1] =11
        y.push(s[1])
    else
        z.push(s[1])
    end

if x.size == 2 || y.size == 2 || z.size == 2
    puts "Yes"
else
    puts "No"
end