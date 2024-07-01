N, x = gets.split.map(&:to_i)
children = gets.split.map(&:to_i).sort

count = 0

children.each.with_index do |num, id|
  if id == children.size-1
    if num == x
      x -= num
      count += 1
    end
  else
    if num <= x
      x -= num
      count += 1
    else
      break
    end
  end
end

puts count