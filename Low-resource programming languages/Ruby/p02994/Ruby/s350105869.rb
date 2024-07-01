require 'pp'
require 'set'

n, l = gets.chomp!.split(" ").map(&:to_i)

sum = 0
min = 999999
v = 99999
1.upto(n) do |i|
    aji = l + i - 1
    sum += aji
    if aji.abs < min
        min = aji.abs
        v = aji
    end
end

puts sum - v
