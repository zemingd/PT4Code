n,k = gets.split.map(&:to_i)
h=gets.split.map(&:to_i).sort.reverse
if n <= k
  puts 0
else
  puts h[k..-1].inject(&:+)
end
