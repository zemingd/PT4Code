n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
count = 0
a.sort.each do |e|
  if x >= e
    count += 1
    x -= e
  else
    break
  end
end
if x == 0
  puts count
else
  puts [count - 1, 0].max
end
