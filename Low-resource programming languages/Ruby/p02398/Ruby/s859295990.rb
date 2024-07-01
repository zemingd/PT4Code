count = 0
a,b,c = gets.split.map(&:to_i)
for x in a..b do
  if c%x == 0 
    count += 1
  end
end
puts count