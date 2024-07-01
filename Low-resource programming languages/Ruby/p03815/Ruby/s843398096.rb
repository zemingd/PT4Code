x = gets.to_i
div, mod = x.divmod(11)
count = div * 2
if mod > 6
  count += 2
elsif mod > 0
  count += 1
end
puts count
