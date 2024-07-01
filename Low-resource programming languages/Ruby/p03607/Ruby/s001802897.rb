N = gets.to_i
as = N.times.map { gets.to_i }
table = Hash.new { 0 }
as.each do |a|
  table[a] += 1
end
ans = table.count do |(_, c)|
  c.odd?
end
puts ans
