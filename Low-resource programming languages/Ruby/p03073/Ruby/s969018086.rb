s = gets.chomp.split("")
even_one = 0
odd_one = 0

(s.size).times do |tile|
    if tile % 2 == 0
        if s[tile] == "1"
            even_one += 1
        else
            odd_one += 1
        end
    else
        if s[tile] == "1"
            odd_one += 1
        else
            even_one += 1
        end
    end
end

puts [even_one, odd_one].min