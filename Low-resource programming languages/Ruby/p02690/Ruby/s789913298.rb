x = gets.chomp.to_i

2000.times do |a|
    a = a - 1000
    2000.times do |b|
        b = b - 1000
        if a.pow(5) - b.pow(5) == x
            puts a.to_s + " " + b.to_s
            exit
        end
    end
end
