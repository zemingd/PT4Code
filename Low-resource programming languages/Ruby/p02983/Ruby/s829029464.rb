require 'set'
require 'pp'

l,r = gets.chomp!.split(" ").map(&:to_i)


next_2019 = (l / 2019 + 1) * 2019

if next_2019 <= r
    puts 0
else
    min = l % 2019
    max = r % 2019

    ans = 2018
    min.upto(max - 1) do |i|
        (i + 1).upto(max) do |j|
            x = i * j
            if x < ans
                ans = x
            end
        end
    end

    puts ans
end
