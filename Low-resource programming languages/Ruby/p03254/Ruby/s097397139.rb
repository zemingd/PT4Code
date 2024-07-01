N, x = gets.strip.split.map(&:to_i)
children = gets.strip.split.map(&:to_i).sort
count = 0
return puts count if children.first > x
children.each do |child|
  x -= child
  return puts count += 1 if x == 0
  return puts count if x < child
  count += 1
end