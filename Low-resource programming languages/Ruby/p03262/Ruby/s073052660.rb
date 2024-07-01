a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i).sort
c = []
for bb in b
  c.push((a[1]-bb).abs)
end
puts c.inject{|a,b| a.gcd(b)}