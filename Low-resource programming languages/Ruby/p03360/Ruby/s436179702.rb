n = gets.chomp.split.map(&:to_i).sort!
k = gets.to_i
k.times do |_|
  n[-1] *= 2
  n.sort!
end
puts n.inject(:+)