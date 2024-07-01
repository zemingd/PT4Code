x = gets.to_i

y = 110.times.map {|i| i ** 5}

110.times do |i|
    110.times do |j|
        if y[i] - y[j] == x
            puts "#{i} #{j}"
            exit
        elsif y[i] + y[j] == x
            puts "#{i} #{-j}"
            exit
        end
    end
end
