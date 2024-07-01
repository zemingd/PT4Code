require 'pp'

n = gets.chomp!.to_i
chs = gets.chomp!.chars

max = 0
1.upto(n-1) do |i|
    left = chs[0, i]
    right = chs[i, n]

    count = (left & right).length
    if count > max
        max = count
    end
end

puts max
