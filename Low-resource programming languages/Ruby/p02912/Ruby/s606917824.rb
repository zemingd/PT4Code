require 'pqueue'
n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

pq = PQueue.new(a){ |a,b| a > b }

m.times do |i|
    largest = pq.pop
    largest = (largest / 2) | 0
    pq.push(largest)
end

puts pq.to_a.inject(:+)