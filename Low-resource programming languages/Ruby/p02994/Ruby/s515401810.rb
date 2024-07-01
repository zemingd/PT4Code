N,L = gets.split.map(&:to_i)

t = []
N.times do |i|
  t << L + i
end

p t.inject(:+) - t.min_by{|n| n.abs}