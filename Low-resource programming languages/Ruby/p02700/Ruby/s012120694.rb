a,b,c,d= gets.chomp.split(" ").map(&:to_i)
while true do
  d -= a
  break if d < 0
  b -= c
  break if b < 0
end

puts b > 0 ? 'Yes' : 'No'