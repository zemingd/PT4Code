require 'pp'

n = gets.chomp!.to_i
chs = gets.chomp!.chars

right_e = chs.count {|ch| ch == 'E' }
left_w = 0

result = []

n.times do |i|
    result << right_e + left_w
    if chs[i] == "E"
        right_e -= 1
    else
        left_w += 1
    end
end

puts result.min
