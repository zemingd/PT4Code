require 'set'

n, m = gets.split.map(&:to_i)
k = []
a = []

n.times do |i|
  ka = gets.split.map(&:to_i)
  k.push  ka.first
  a.push ka[1..-1]
end

u = a.to_set.reduce([].to_set) { |sum, e| sum + e }

all = u.to_set
all = a.reduce(u) { |int, e| int & e }

puts all.size
