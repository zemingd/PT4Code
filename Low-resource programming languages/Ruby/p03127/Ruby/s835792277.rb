N = gets.to_i
as = gets.split.map(&:to_i).sort

while as.count > 1 do
  as[-1] %= as[-2]
  as.delete(0)
  as.uniq!
  as.sort!
end

puts as.first
