a = gets.to_i
a += 1
c = 0
a.times do |i|
  count = 0
  i.times do |j|
    if i % (j+1) == 0 then
      count += 1
    end
  end
  if count == 8 && i % 2 == 1 then
    c += 1
  end
end
puts c