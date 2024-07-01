a = gets.chomp.to_s

cnt =0
a.length.times.each do
  if a.include?('101010')
    a = a.sub!(/101010/, '')
    cnt += 6
  end
  if a.include?('010101')
    a = a.sub!(/010101/, '')
    cnt += 6
  end
  if a.include?('1010')
    a = a.sub!(/1010/, '')
    cnt += 4
  end
  if a.include?('0101')
    a = a.sub!(/0101/, '')
    cnt += 4
  end
  if a.include?('10')
    a = a.sub!(/10/, '')
    cnt += 2
  end
  if a.include?('01')
    a.sub!(/01/, '')
    cnt += 2
  end
end
puts cnt