a,b,c = gets.split.map(&:to_i)

x = []
(a..b).each do |v|
  x << v if c % v == 0
end

puts x.length