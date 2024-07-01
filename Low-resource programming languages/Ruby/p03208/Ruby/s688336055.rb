#require 'pp'
#require 'set'

n, k = gets.chomp!.split(" ").map(&:to_i)
h_n = []
n.times do |i|
    h_n[i] = gets.to_i
end
h_n.sort!

#pp h_n

min = 10 ** 20

head = 0
tail = k - 1

(n - k + 1).times do |i|
    diff = h_n[tail + i] - h_n[head + i]
    #pp diff
    if diff < min
        min = diff
    end
end

puts min
