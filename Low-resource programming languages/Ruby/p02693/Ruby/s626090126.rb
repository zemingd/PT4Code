require 'pp'

k = gets.to_i
a, b = gets.split.map(&:to_i)

a.upto(b) do |i|
    if i % k == 0
        puts "OK"
        exit 0
    end
end

puts "NG"
