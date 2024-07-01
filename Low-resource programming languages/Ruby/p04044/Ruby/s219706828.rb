n,b = gets.split.map(&:to_i)
c = n.times.map{gets.chomp}.sort
(1..n).each do |i|
  c[i].sort
end

puts c.join
  
