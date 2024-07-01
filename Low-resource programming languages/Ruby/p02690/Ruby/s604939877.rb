x = gets.chomp.to_i

n = 10 * 3
(-n..n).each do |i|
    (-n..n).each do |j|
        if (i ** 5 - j ** 5) == x
            puts [i, j].join(" ")
            exit
        end
    end
end
