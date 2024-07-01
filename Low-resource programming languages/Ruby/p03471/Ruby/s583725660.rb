N, Y = gets.split.map(&:to_i)
(0...N).each do |n10|
    (0...(N-n10)).each do |n5|
        n1 = N - n10 - n5
        next if n1 < 0
        if (10 * n10 + 5 * n5 + n1) * 1000 == Y
            puts "#{n10} #{n5} #{n1}"
            exit
        end
    end
end
puts "-1 -1 -1"
