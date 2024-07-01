require 'set'

n, m = STDIN.gets.split.map(&:to_i)

cards = Set.new 1.upto(n)

m.times do
  l, r = STDIN.gets.split.map(&:to_i)
  cards = cards.delete_if {|c| c < l || r < c}
end

STDOUT.puts cards.size