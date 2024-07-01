x = gets.to_i

count = x / 11
remaining = x - 11*count
# p "count: #{count} remaining #{remaining}"
if remaining == 0
  p count*2
elsif remaining <= 6
  p count*2 + 1
else
  p count*2 + 2
end
