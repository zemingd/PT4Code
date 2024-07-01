n = gets.chomp.to_i
s = gets.chomp.split("")
min_count = 3 * 10**5

(n).times do |i|
    east = []
    west = []
    count = 0

    s.each_with_index do |str,j|
        if i == j
            next
        elsif i < j
            if str == "E"
                count = count + 1
            end
        else
            if str == "W"
                count = count + 1
            end
        end
    end
    if min_count > count
        min_count = count
    end
end
puts min_count