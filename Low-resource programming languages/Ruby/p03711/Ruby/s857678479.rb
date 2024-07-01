group = [[1,3,5,7,8,10,12],[4,6,9,11],[2]]
a,b = gets.split.map(&:to_i)
switch = false
i = 0
while i < group.size
  if group[i].include?(a) && group[i].include?(b)
    switch = true
  end
  i += 1
end

if switch
  puts "Yes"
else
  puts "No"
end
