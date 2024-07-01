n = gets.chomp.to_i
monster = gets.chomp.split(" ").map(&:to_i)
hero = gets.chomp.split(" ").map(&:to_i)

total = 0
n.times do |i|
    if monster[i] <= hero[i]
        total += monster[i]
        hero[i] -= monster[i]
        if monster[i + 1] <= hero[i]
            total += monster[i + 1]
        else
            total += hero[i]
            monster[i + 1] -= hero[i]
        end
    else
        total += hero[i]
    end
end

puts total
