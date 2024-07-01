require 'pp'

a, b, c, d = gets.split.map(&:to_i)

turn = 0
loop do
    if turn % 2 == 0
        c -= b
        if c <= 0
            puts "Yes"
            break
        end
    else
        a -= d
        if a <= 0
            puts "No"
            break
        end
    end
    turn += 1
end
