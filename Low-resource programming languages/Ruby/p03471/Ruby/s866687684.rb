N, Y = gets.split(' ').map(&:to_i)
N.times{|i|
    (0..i).each{|j|
        (0..(Y-i)).each{|k|
            if Y == 10000 * i + 5000 * j + 1000 * (N - i - j)
                puts "#{i} #{j} #{N - i - j}"
            end
        }
    }
}
puts "-1 -1 -1"