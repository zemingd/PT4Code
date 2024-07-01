N = gets.to_i
c = 0
(1..N).each do |n|
 next unless n.odd?
 c += (1..n).count { |m| (n % m).zero? } == 8 ? 1 : 0
end              
puts c