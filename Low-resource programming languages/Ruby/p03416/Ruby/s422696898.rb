# AtCoder Beginner Contest 090B

count = 0
a,b = gets.split.map(&:to_i)

a.upto(b) do |i|
        if i.to_s == i.to_s.reverse
                count += 1
        end
end

puts count