gets
s = gets.chomp
while line = gets
    l, r = line.chomp.split(/\s/).map{|i| i.to_i - 1}

    ac = nil
    count = 0
    s[l..r].each_char do |c|
        if ac
            if c == "C"
                count += 1
                ac = nil
            end
        else
            if c == "A"
                ac = c
            end
        end
    end

    puts count
end
