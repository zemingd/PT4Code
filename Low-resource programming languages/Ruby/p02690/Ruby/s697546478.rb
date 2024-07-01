x = gets.chomp.to_i

n = 10 * 3
pows = (0..n).map { |i| i ** 5 }

pows.each_with_index do |a, i|
    pows.each_with_index do |b, j|
        if a - b == x
            puts [i, j].join(' ')
            exit
        end
        if a + b == x
            puts [i, -j].join(' ')
            exit
        end
        if -a - b == x
            puts [-i, j].join(' ')
            exit
        end
        if b - a == x
            puts [-i, -j].join(' ')
            exit
        end
    end
end
