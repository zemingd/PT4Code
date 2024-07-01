require 'pp'

n, l = gets.chomp!.split(" ").map(&:to_i)
s_n = Array.new(n)
n.times do |i|
    s = gets.chomp!
    s_n[i] = s
end

puts s_n.sort!.join
