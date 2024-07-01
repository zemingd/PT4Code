n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
count = 0

a.each do |i|
  if (x -= i) >= 0
    count += 1
  end
end

if x > 0
  count -= 1
end

puts count