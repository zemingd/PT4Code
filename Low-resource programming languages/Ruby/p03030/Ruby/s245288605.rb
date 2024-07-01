n = gets.to_i
sps = []
n.times do |i|
  sps << [i + 1, *gets.split]
end
puts sps.sort_by { |sp| [sp[1], -sp[2].to_i] }.map(&:first)