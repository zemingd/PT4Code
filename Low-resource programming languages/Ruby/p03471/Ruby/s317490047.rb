N, Y = gets.split(' ').map(&:to_i)
(0..N).each{|i|
    (0..(N-i)).each{|j|
        if Y == 10000 * i + 5000 * j + 1000 * (N - i - j)
            puts "#{i} #{j} #{N - i - j}"
            exit
        end
    }
}
puts "-1 -1 -1"