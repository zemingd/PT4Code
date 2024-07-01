count = 0
a,b,c = gets.split.map(&:to_i)
for x in 1..c do
  if c%x == 0 
    count = count + 1
  end
end
puts count