require 'pp'
n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

h.sort!

k.times do
  break if h.size == 0
  h.pop
end
p h.inject(:+) || 0

