h, k = gets.strip.split(' ').map(&:to_i)
p = gets.strip.split(' ').map(&:to_i)
p.sort!.reverse!
cut = h - k
if cut > 0
  puts p[k..-1].inject(&:+)
else
  puts 0
end
