a = gets.chomp.to_s

cnt = 0
while a.length do
  if a.include?('10')
    a.sub!(/10/, '')
    cnt += 2
  end
  if a.include?('01')
    a.sub!(/01/, '')
    cnt += 2
  end
  if a.length <= 2
    break
  end
end
puts cnt