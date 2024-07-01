N, L = gets.chomp.split.map(&:to_i)
ss = []
N.times do
  ss << gets.chomp
end

puts ss.sort.join