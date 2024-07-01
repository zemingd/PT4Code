A = gets.to_i

isBreak = false
100.times do |i|
    200.times do |j|
        if A == i ** 5 - (j - 100) ** 5 then
            isBreak = true
            puts "#{i} #{j - 100}"
            break
        end
        break if isBreak
    end
end
