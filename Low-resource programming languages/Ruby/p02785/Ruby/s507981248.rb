require 'pp'

n, k = gets.chomp!.split.map(&:to_i)
h_n = gets.chomp!.split.map(&:to_i).sort

k.times do |i|
    h_n.pop
end

sum = 0
while h_n.empty?.!
    sum += h_n.pop
end

puts sum

