a,b,c = gets.split.map(&:to_i)

x = []
(1..c).each do |v|
  x << v if c % v == 0
end

puts [*a..b].length - ([*a..b] - x).length