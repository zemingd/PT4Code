n, x = gets.chomp.split(' ').map(&:to_i)
list = gets.chomp.split(' ').map(&:to_i).sort

count = 0

n.times do |i|
  x -= list[i]
  if x >= 0
    count += 1
  else
    break;
  end
end

if x > 0
  n.times do |i|
    if x >= 0
      x -= list[i]
      count -= 1
    else
      break;
    end
  end
end

print count