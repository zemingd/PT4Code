require 'pp'

n, m = gets.split.map(&:to_i)
h_n = gets.split.map(&:to_i)

path = {}
m.times do |i|
    a, b = gets.split.map(&:to_i)
    path[a] ||= {}
    path[a][b] = 1
    path[b] ||= {}
    path[b][a] = 1
end

count = 0
1.upto(n) do |i|
    if path[i] == nil
        count += 1
        next
    end
    
    if path[i].all? {|k, _| h_n[i-1] > h_n[k-1] }
        count += 1
    end
end

puts count
