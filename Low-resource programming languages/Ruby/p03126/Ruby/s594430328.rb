n, m = gets.split(' ').map(&:to_i)
h = (1..m).to_a
n.times do |i|
  h &= gets.split(' ').map(&:to_i)[1..-1]
end
puts h.size
