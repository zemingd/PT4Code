A = gets.to_i

isBreak = false
40.times do |i|
    80.times do |j|
        if A == i ** 5 - (j - 40) ** 5 then
            isBreak = true
            puts "#{i} #{j - 40}"
            break
        end
        break if isBreak
    end
end
