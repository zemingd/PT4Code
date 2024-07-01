require 'set'

n, m = STDIN.gets.split.map(&:to_i)

cards = Set.new 1.upto(n)
l_min = 0
r_max = n + 1
m.times do
  l, r = STDIN.gets.split.map(&:to_i)
  l_min = l if l < l_min
  r_max = r if r_max < r
end

STDOUT.puts cards.delete_if {|c| c < l_min || r_max < c}.size