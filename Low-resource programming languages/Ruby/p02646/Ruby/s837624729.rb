require 'pp'

a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

diff = (a - b).abs
diff2 = (w - v).abs

if v < w
    puts "NO"
    exit 0
end

if diff2 * t >= diff
    puts "YES"
else
    puts "NO"
end
