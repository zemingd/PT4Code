n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i).sort!

puts hs[0..-1 - k].inject(&:+) || 0
