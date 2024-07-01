n, m = gets.chomp.split.map(&:to_i)
an = gets.chomp.split.map(&:to_i)

m.times do
  an.sort!
  an[-1] /= 2
end

puts an.inject(&:+)
