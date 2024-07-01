A = gets.to_i

isBreak = false
1000.times do |i|
    2000.times do |j|
        if A == i ** 5 - (j - 1000) ** 5 then
            isBreak = true
            puts "#{i} #{j - 1000}"
            break
        end
        break if isBreak
    end
end
