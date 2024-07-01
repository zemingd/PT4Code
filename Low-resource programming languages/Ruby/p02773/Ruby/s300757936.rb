require 'pp'

n = gets.chomp!.to_i
counter = Hash.new(0)
n.times do |i|
    x = gets.chomp
    counter[x] += 1
end

m = counter.values.max
puts counter.select {|k, v| v == m }.keys.sort
