n,x = gets.strip.split.map(&:to_i)
ms = n.times.map{gets.to_i}.sort

cnt = 0

ms.each do |m|
  if x > ms.min
    cnt += 1
  	x = x - m
  else
    break
  end
  
  while x > ms.min do
      cnt += 1
      x = x - ms.min
  end
end

puts cnt