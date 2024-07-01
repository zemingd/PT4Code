n, m = gets.chomp!.split(" ").map!(&:to_i)
l = Array.new(0, m)
r = Array.new(0, m)
m.times do |i|
    l[i], r[i] = gets.chomp!.split(" ").map!(&:to_i)
end

require 'set'
x = SortedSet.new((1..n).to_a)
m.times do |i|
    x = x & SortedSet.new((l[i]..r[i]).to_a)
end

puts x.count