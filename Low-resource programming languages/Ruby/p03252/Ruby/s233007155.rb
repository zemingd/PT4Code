c1 = gets.chomp.split("")
c2 = gets.chomp.split("")

c1.length.times do |i|
    if c1[i] == c2[i]
        next
    end

    before = c1[i]
    after = c2[i]
    c1.length.times do |c|
        if c1[c] == before
            c1[c] = after
        elsif c1[c] == after
            c1[c] = before
        end
    end
end

if c1.join == c2.join
    puts "Yes"
else
    puts "No"
end
