n = gets.chomp.to_i
s = gets.chomp.split("")
max_count = 0

(n-1).times do |i|
    front = []
    back  = []
    count = 0

    s.each_with_index do |str,j|
        if i >= j
            front << str
        else
            back  << str
        end
    end
    front.sort!.uniq!
    back.sort!.uniq!
    front.each do |x|
        if back.include?(x)
            count = count + 1
        end
    end

    if max_count < count
        max_count = count
    end
end
puts max_count