require 'pp'

n = gets.chomp!.to_i
chs = gets.chomp!.chars

right_e = chs.count {|ch| ch == 'E' }
left_w = 0

result = []

n.times do |i|
    if chs[i] == "E"
        right_e -= 1
    end

    result << right_e + left_w

    if chs[i] == "W"
        left_w += 1
    end
end

puts result.min
