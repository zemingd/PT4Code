n = gets.to_i
p = gets.chomp.split().map(&:to_i)

count = 1
i = 1
while true
  ind = p.index(i)
  if ind == 0
    p = [p[0]]
  elsif p.include?(i)
    p = p[0..ind]
  else
    i += 1
    next
  end
  if p.length <= 1
     break
  end
  count += 1
  i += 1
end
puts count